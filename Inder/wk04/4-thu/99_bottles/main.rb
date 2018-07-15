require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @num_bottles = '99'
  "<h2> #{@num_bottles} Bottles of Beer on the Wall
   <a href='/#{@num_bottles}'>TAKE ONE DOWN</a></h2>"
end

get '/0' do
  "<h2>No bottles on the wall
  </br> <a href='/'>CLICK ME TO START OVER</a></h2>"
end

get '/:num_bottles' do
   
    @num_bottles = params[:num_bottles]
    @num_bottles = (@num_bottles.to_i - 1)
    
  if @num_bottles.to_i > 0
    erb :index
  else
    redirect("http://localhost:4567/0")
  end
end
