     
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'pg'


 #CREATE TABLE  localomdb (
 # id SERIAL4 PRIMARY KEY,
  #title VARCHAR(100),
  #poster VARCHAR(400),
  #imdbID VARCHAR(9)
 #);

#result = HTTParty.get("http://omdbapi.com/?t=#{movieinput}&#apikey=2f6435d9")
# http://omdbapi.com/?t=jaws&apikey=2f6435d9


def run_sql(sql)
  conn = PG.connect(dbname: 'localomdb')
  result = conn.exec(sql)
  conn.close
  return result
end

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

    #resultyear is not used just kept it in as placeholder
    @resultyear = @result["Year"]
    @poster = @result["Poster"]
    erb :movie
  end
end


get '/movie/:movieinput' do
  
  #movieinput='jaws'
  #puts movieinput
  movieinput = params[:movieinput]


  result = run_sql("SELECT * FROM movies WHERE title = '#{ movieinput}'")

  
# CHECK IF MOVIE EXISTS IN LOCAL OMDB DB

  if  result.first != nil
    
    # IF EXISTS THEN USE LOCAL DB
    @result = result.first["title"]
    @poster = result.first["poster"]
    @resultImdbid = result.first["imdbID"]

  else
      
        # CALL THE API 
        @result = HTTParty.get("http://omdbapi.com/?t=#{movieinput}&apikey=2f6435d9")
        

        # STORE THE API RESULTS FOR TITLE AND POSTER
        #@result = @result["Title"]
        @poster = @result["Poster"]
        @resultImdbid = @result["imdbID"]
        @resultTitle = @result["Title"]

        # CALL THE SQL TO STORE IN LOCAL OMDB
        sql = "INSERT INTO movies (title, poster, imdbid) VALUES ('#{@resultTitle}', '#{@poster}', '#{@resultImdbid}');" 
        run_sql(sql)
        #run_sql(sql)
  
  end

#@resultyear = @result["Year"]
#@poster = @result["Poster"]

erb :movie
end




