require_relative '../app'

app = Sinatra::Application

Lyrics.all.each do |lyric|
  gif = app.settings.gif_searcher.random_result(lyric.keyword)
  app.settings.gif_cache.set lyric, gif
end
