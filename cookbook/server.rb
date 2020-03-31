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

get '/add' do
    @title = "Add a Recipe"
    erb :form
end

get '/edit/:id' do
    @title = "Edit a Recipe"
    @recipe = Recipe.find(params[:id])

    erb :edit
end

post '/' do
    @recipe = Recipe.new
    @recipe.name = params[:name]
    @recipe.prep_time = params[:prep_time]
    @recipe.description = params[:description]
    @recipe.image = params[:url]
    @recipe.save

    redirect to('/recipes')
end

put '/recipes/:id' do    
    @recipe = Recipe.find(params[:id])
    @recipe.update(
        name: params[:name],
        prep_time: params[:prep_time],
        description: params[:description],
        image: params[:url]
    )    
    @title = @recipe.name
    erb :recipe    
end

delete '/delete/:id' do
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect to('/')
end




