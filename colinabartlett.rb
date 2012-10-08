require 'sinatra'
require 'haml'

get '/' do
  haml :resume
end

get '/contact' do
  haml :contact
end
