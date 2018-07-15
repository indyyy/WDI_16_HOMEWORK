class Client 
  attr_accessor :name, :numchild, :age, :pets

#defadopt(animal)
#  adoptindex = $shelter.name.find_index(animal)
#  $shelter[adoptindex]. = animal
#
#end
end




def createClient()
  $shelter[:clients].push(Client.new)
  print "Enter Client name: "
  $shelter[:clients][-1].name = gets.chomp
  print "Enter Client number of children: "
  $shelter[:clients][-1].numchild = gets.chomp
  print "Enter Client age: "
  $shelter[:clients][-1].age = gets.chomp
  print "Enter Client pets: "
  $shelter[:clients][-1].pets = gets.chomp
end

def dispClient()
  $shelter[:clients].each { | item |  puts item.inspect }
end

def adopt()
  puts "client wants to adopt"
  print "What's your name: "
  prospect = gets.chomp
  #$shelter[:clients].each do | item | 
  #  puts item.age if (item.name == prospect)
  
  #IS CLIENT? Y:START ADOPTION N:NEW CLIENT PROCESS THEN ADOPT
  c = $shelter[:clients].index { |item| item.name==prospect}
  puts c
  if c == nil
     puts "I see you are new here, let's add you in... \n\n"
     createClient()
     c = -1
  else 
     puts "Welcome back #{prospect}" 
  end
  #SELECT ANIMAL BASED ON NAME - USUALLY WOULD BE UNIQUE PET TAG
  print "What is the name of the animal you wanted to adopt: "
  cart = gets.chomp
  puts $shelter
  # START THE PET TRANSFER PROCESS
  # FIND THE ANIMAL IN SHELTER BY NAME
  a = $shelter[:animals].index { |item| item.name== cart}
  # MOVE THE PET FROM SHELTER TO CLIENT
  $shelter[:clients][c].pets = $shelter[:animals][a].species
  # REMOVE THE ANIMAL FROM ANIMAL INVENTORY
  $shelter[:animals].delete_at(a)
  puts $shelter

  #end
end 

def give()
  puts "client wants to give for adoption"
  print "What's your name: "
  prospect = gets.chomp
  #$shelter[:clients].each do | item | 
  #  puts item.age if (item.name == prospect)
  
  #IS CLIENT? Y:START GIVE ADOPTION N:NEW CLIENT PROCESS THEN GIVE
  c = $shelter[:clients].index { |item| item.name==prospect}
  puts c
  # c REFERS TO  THE CLIENT INDEX IN THE SHELTER
  if c == nil
     puts "I see you are new here, let's add you in"
     createClient()
     # AS CLIENT IS NEW -1 is the last entry in the client shelter
     c = -1
  else 
     puts "Welcome back #{prospect}" 
  end
  #GIVE ANIMAL TO SHELTER
  print "Just have to ask you a few questions on the pet you are giving to the shelter \n\n "
  createAnimal()
  puts $shelter
  # START THE PET TRANSFER PROCESS
  # FIND THE ANIMAL IN SHELTER BY NAME
  # -1 refers to the last animal in animal shelter
  a = -1
  
  # REMOVE THE ANIMAL FROM OWNER BY UPDATING PETS to ZERO (have to update logic)
  $shelter[:clients][c].pets = 0
  puts $shelter

  #end
end 




=begin
A client should have a name.
A client should have a number of children.
A client should have an age.
A client should have a list of pets.
=end

