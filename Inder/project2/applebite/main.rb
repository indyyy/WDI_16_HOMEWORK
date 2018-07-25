     
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

require_relative 'db_config'
require_relative 'models/adpost'
require_relative 'models/user'


get '/' do
  @adposts = Adpost.all
  erb :index
end

get '/about' do
  return 'about me me me'
end

#get '/category/iPad' do
# erb :category
#end

get '/category/:cat' do
  #grab the category from params and set the @category to iPhone, Mac, iPad etc. 
  @category=params[:cat]
  #get from db the records that match the category and order in descending by the most current posting based on date and time.
  @adposts = Adpost.where(category:@category).order(post_date: :desc).order(post_time: :desc)
  erb :category
end

#get '/category/Mac' do
# erb :category
#end

#get '/category/other' do
# erb :category
#end





