require 'sinatra'
require 'sinatra/reloader'

SECRET_NUM = rand(1...100)

get '/' do    
    guess = params["guess"]
    message = check(guess)
    erb :index, :locals => { :message => message, :guess => guess }    
end

def check(guess)
    if guess == nil
        return "Enter a number"
    end
    secret = "The secret number is #{SECRET_NUM}."
    guess = guess.to_i
    if guess < SECRET_NUM then
        return "Too low!"
    elsif guess > SECRET_NUM then
        return "Too high!"
    elsif guess == SECRET_NUM
        return "Correct! #{secret}"    
    end
end




