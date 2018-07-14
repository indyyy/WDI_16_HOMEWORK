require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require_relative 'animal'
require_relative 'client'

$shelter=[]


get '/' do
  'welcome to the jungle</h1> <a href="/shelter">shelter</a>'
end

get '/shelter' do
  erb(:index)
end

  #createAnimal()
  #createClient()
  #dispAnimal()
  #dispClient()

#puts "Welcome to the Shelter"

#createAnimal()
#createClient()
#dispAnimal()
#dispClient()


#print "What is name of the animal you would you like to adopt"
#adoptchoice=gets.chomp
#adopt(adoptchoice)



