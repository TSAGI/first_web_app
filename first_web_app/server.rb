require 'sinatra'

get '/' do
    @return = 'This is my first web app.  To learn more about me, click
    <a href="/about">here.</a> To view my contact info, click
    <a href="/contact">here.</a>'
    
    erb :welcome
end

get '/about' do
    @return = 'Click
    <a href="/">here</a> to return to the welcome page, or click
    <a href="/contact">here</a> to go to the contact page.'

    erb :about
end

get '/contact' do 
    @return = 'Click
    <a href="/">here</a> to return to the welcome page, or click
    <a href="/about">here</a> to go to the about page.'

    erb :contact
end