require 'sinatra'

get '/' do
    erb :welcome
end

get '/about' do
    erb :about
end

get '/contact' do 
    erb :contact
end