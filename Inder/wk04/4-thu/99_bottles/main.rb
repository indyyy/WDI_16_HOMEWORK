require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/:num_bottles' do
  #@num_bottles = :num_bottles
  
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  "Hello #{params[:num_bottles]}!"
  @num_bottles = params[:num_bottles]
  erb :index
end