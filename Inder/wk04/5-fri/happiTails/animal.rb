class Animal 
  attr_accessor :name, :age, :gender, :species, :toys
end


def createAnimal()
  $shelter[:animals].push(Animal.new)
  print "Enter Animal name: "
  $shelter[:animals][-1].name = gets.chomp
  print "Enter Animal age: "
  $shelter[:animals][-1].age = gets.chomp
  print "Enter Animal gender: "
  $shelter[:animals][-1].gender = gets.chomp
  print "Enter Animal species: "
  $shelter[:animals][-1].species = gets.chomp
  print "Enter Animal toys: "
  $shelter[:animals][-1].toys = gets.chomp
end

def dispAnimal()
  $shelter[:animals].each { | item |  puts item.inspect }
end


=begin
An animal should have a name.
An animal should have an age.
An animal should have a gender.
An animal should have a species.
An animal can have multiple toys.
=end