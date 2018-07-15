require 'pry'
#equire 'sinatra'
#require 'sinatra/reloader'

require_relative 'animal'
require_relative 'client'
#require_relative 'menu'

$shelter={:animals => [], :clients => []}
user_choice = 0

while (user_choice != 7)
  puts "1. Display all Animals"
  puts "2. Display all Clients"
  puts "3. Create a new Animal"
  puts "4. Create a new Client"
  puts "5. Adopt an Animal"
  puts "6. Give your Animal for Adoption"
  puts "7. Quit"
  
  user_choice = gets.chomp.to_i

  
    case user_choice 
      when 1
        #puts "\e[2J" 
        puts "Display Animal function\n\n" 
        dispAnimal()
      when 2
        #puts "\e[2J" 
        puts "Display Client function\n\n"
        dispClient()
      when 3
        #puts "\e[2J" 
        puts "Create Animal function\n\n"
        createAnimal()
      when 4
        #puts "\e[2J" 
        puts "Create Client function\n\n"
        createClient()
      when 5 
        #puts "\e[2J" 
        puts "Adopt function\n\n"
        adopt()
      when 6 
        #puts "\e[2J" 
        puts "Give function\n\n"
        give()
     end
end















#menu=Menu.new("Display Animals", "Display Clients", "Create #Animal", "Create Client", "Adopt Animal", "Give for Adoption", #"Quit")



#get '/' do
#  'welcome to the jungle</h1> <a href="/shelter">shelter</a>'
#end
#
#get '/shelter' do
#  erb(:index)
#end
#
#post '/shelter/' do
#  "Hi There"
#  def showProducts(param)#
#    "Hi There param is: #{param}"
#   #greeting = params[:greeting] || "Hi"
#   #erb :index, :locals => {'greeting' => greeting}
#  end
#end
#

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



