     
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

get '/movielist' do
  movieinput = params[:movieinput]

  @resultlist = HTTParty.get("http://omdbapi.com/?s=#{movieinput}&type=movie&apikey=2f6435d9")
  @resultlist = @resultlist["Search"]
  #binding.pry
#@resultyear = @result["Year"]
#@poster = @result["Poster"]
  if @resultlist[1] != nil
    erb :movielist
  else
    @result = HTTParty.get("http://omdbapi.com/?t=#{movieinput}&apikey=2f6435d9")
    @resultyear = @result["Year"]
    @poster = @result["Poster"]
    erb :movie
  end
end


get '/movie/:movieinput' do
  
  #movieinput='jaws'
  #puts movieinput
  movieinput = params[:movieinput]
@result = HTTParty.get("http://omdbapi.com/?t=#{movieinput}&apikey=2f6435d9")

@resultyear = @result["Year"]
@poster = @result["Poster"]


erb :movie
end




