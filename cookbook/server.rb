require 'sinatra'
require_relative 'recipe'

get '/' do
    redirect to('/recipes')
end

get '/about' do
    @title = 'About Us'
    erb :about
end

get '/contact' do
    @title = 'Contact Us'
    erb :contact
end

get '/fine_print' do
    @title = 'Fine Print'
    erb :fine_print
end

get '/recipes' do
    @title = 'Recipes'
    @recipes = Recipe.all
    erb :recipes
end

get '/recipes/:id' do
    id = params[:id]
    
    @recipe = Recipe.find(id)
    @title = @recipe.name

    erb :recipe
end
