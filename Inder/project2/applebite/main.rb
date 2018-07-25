     
require 'sinatra' 
require 'sinatra/reloader'
require 'pg'
require 'pry'

def run_sql(sql)
  conn = PG.connect(dbname: 'applebite')
  result = conn.exec(sql)
  conn.close
  return result
end


get '/' do
  erb :index
end

get '/about' do
  return 'about me me me'
end

get '/category/iPad' do
  erb :category
end

get '/category/iPhone' do
  @adposts = run_sql('SELECT * FROM adpost;')
  binding.pry
  erb :category
end

get '/category/Mac' do
  erb :category
end

get '/category/other' do
  erb :category
end





