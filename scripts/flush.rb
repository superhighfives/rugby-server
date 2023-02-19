require_relative '../app'

app = Sinatra::Application

Lyrics.all do |lyric|
  app.settings.gif_cache.delete lyric
end
