require 'sinatra'
require 'httparty'
set :port, 3000

@@url = 'https://samples.openweathermap.org/data/2.5/weather'

get '/' do

  erb :index
end

get '/cookies' do

  erb :cookies
end

get '/cake' do

  erb :cake
end

get '/muffin' do

  erb :muffin
end
