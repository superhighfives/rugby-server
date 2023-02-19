require 'sinatra'
require 'sinatra/cross_origin'
require 'sinatra/jsonp'
require 'dalli'
require 'json'
require 'giphy'
require 'newrelic_rpm'

require_relative './lib/lyrics'
require_relative './lib/gif_searcher'
require_relative './lib/gif_cache'

use Rack::Deflater

Giphy::Configuration.configure do |config|
  config.version = ENV['GIPHY_API_VERSION']
  config.api_key = ENV['GIPHY_API_KEY']
end

# CORS related configs
enable :cross_origin
set :allow_methods, [:get, :options]
set :allow_credentials, false
set :max_age, "1728000"

set :gif_searcher, GifSearcher.new
set :gif_cache, GifCache.new(
  ::Dalli::Client.new(ENV['MEMCACHIER_SERVERS'].split(','),
                      username: ENV['MEMCACHIER_USERNAME'],
                      password: ENV['MEMCACHIER_PASSWORD'],
                      namespace: 'rugby')
)

configure :development do
  # Fix thin logging
  $stdout.sync = true

  require 'sinatra/reloader'

  set :allow_origin, '*'
end

configure :production do
  set :allow_origin, 'https://rugby.wearebrightly.com'
end

helpers do
  def gif_searcher
    settings.gif_searcher
  end
  def gif_cache
    settings.gif_cache
  end
end

before do
  response.headers["Access-Control-Allow-Headers"] = "x-requested-with"
end

get '/data.json' do
  content_type :json
  results = Lyrics.all.collect {|lyric|
    cache = gif_cache.get(lyric)
    images = cache.map do |image|
      data = image.send(:hash)
      exploded = data['slug'].split('-')
      data['unique'] = exploded.length > 1 ? exploded.first(exploded.length - 1).join('-') : exploded[0]
      data
    end
    images = images.uniq {|image| image['unique']}
    {
      id: lyric.id,
      line: lyric.line,
      keyword: lyric.keyword,
      time: lyric.time,
      images: images
    }
  }
  jsonp results
end
