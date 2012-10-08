require 'sinatra'
require 'haml'
require 'redcarpet'
require 'rss'

get '/' do
  haml :resume
end

get '/contact' do
  haml :contact
end

get '/consulting' do
  haml :consulting
end

get '/blog' do
  @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  open('http://feeds.pinboard.in/rss/secret:39b6d1c4cb52d7de9a1a/u:cbartlett/t:colinabartlett.com/') do |rss|
    @posts = RSS::Parser.parse(rss).items
  end
  haml :blog
end
