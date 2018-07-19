     
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'



def run_sql(sql)
  conn = PG.connect(dbname: 'greatbeachfinder')
  result = conn.exec(sql)
  conn.close
  return result
end

require_relative 'db_config'
require_relative 'models/beaches'
#require_relative 'models/ratings'

get '/' do
  # select all beaches and display beach list and option to post new in the index file
  @beaches = Beaches.all
  
  erb :index, layout: true

end

get '/about' do
  return 'about me me me '
end


# getting the form for a new beach
get '/beaches/new' do
  erb :new
end

# show a single beach by id
get '/beaches/:id' do
  @beaches=Beaches.find( params[:id] ) # 'find' is always by id 
  #@ratings= @beaches.ratings
  erb :beaches_detail
end


# create a beach in the database from the "new-post call"
post '/beaches' do
  # inputs from the form - is inside params
  beaches = Beaches.new
  beaches.name = params[:name]
  beaches.location = params[:location]
  beaches.image_url = params[:image_url]
  beaches.save
  # get post redirect
  redirect '/' # needs to a route - because its making a request
  # get is safe and harmless, post is danger
end

# DELETE record in table beaches by beachedID
delete '/beaches/:id' do

  
  beaches = Beaches.find( params[:id])
  beaches.destroy
  
  redirect '/'
  "danger!!!!"
end

get '/beaches/:id/edit' do
  

  @beaches = Beaches.find(params[:id])
  erb :edit 
end

put '/beaches/:id' do

  # save the updated record to Beaches table
   
  beaches = Beaches.find(params[:id])
  beaches.name = params[:name]
  beaches.location = params[:location]
  beaches.image_url = params[:image_url]
  beaches.save

  redirect "/beaches/#{ params[:id] }"
  # run the sql
  # redirect
end


#post '/ratings' do
  #sql = "INSERT INTO comments (content, dish_id) VALUES ('#{params#[:content] }', #{params[:dish_id] });"
  #run_sql(sql)

  #comment = Comment.new
  #comment.content = params[:content]
  #comment.dish_id = params[:dish_id]
  #comment.save
  puts "YAY"

  #redirect "/dishes/#{ params[:dish_id]}"
#end
#get '/dishes/:dishname' do
# params[:dishname]
#end

#get '/:dishname' do
# params[:dishname]
# return 'a dish'
#end





