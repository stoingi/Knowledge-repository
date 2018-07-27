require 'sinatra'
get '/' do
  'Hello world!'
end


get '/curriculum' do
  erb :curriculum
end
