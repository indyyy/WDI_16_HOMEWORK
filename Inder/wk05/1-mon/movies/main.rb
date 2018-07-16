     
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'


#result = HTTParty.get("http://omdbapi.com/?t=#{movieinput}&#apikey=2f6435d9")
# http://omdbapi.com/?t=jaws&apikey=2f6435d9


get '/' do
  erb :index
end



get '/about' do
 erb :about 
end

get '/movie' do
  
  #movieinput='jaws'
  #puts movieinput
  movieinput = params[:movieinput]
  

@result = HTTParty.get("http://omdbapi.com/?t=#{movieinput}&apikey=2f6435d9")

@resultyear = @result["Year"]
@poster = @result["Poster"]


erb :movie
end




