require 'sinatra'

get '/' do
  <<-CONTENT
  Colin A. Bartlett<br>
  colin at colinabartlett dot com<br>
  215-292-2193
  CONTENT
end
