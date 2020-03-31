require 'sinatra'
require_relative 'stuff.rb'
# @list = @todo_list
configure do 
  set :list, @todo_list
  set :time, @current_time
end

get '/' do
   erb :hello 
end

get '/hey_frank' do
    'Bada Bing!! Bada Boom!!'
end

get '/todo' do 
  :list
  :time
    erb :todo
end

# puts @todo_list
