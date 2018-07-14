class Animal 
  attr_accessor :name, :age, :gender, :species, :toys
end


def createAnimal()
  $shelter.push(Animal.new)
  print "Enter Animal name: "
  $shelter[-1].name = gets.chomp
  print "Enter Animal age: "
  $shelter[-1].age = gets.chomp
  print "Enter Animal gender: "
  $shelter[-1].gender = gets.chomp
  print "Enter Animal species: "
  $shelter[-1].species = gets.chomp
  print "Enter Animal toys: "
  $shelter[-1].toys = gets.chomp
end

def dispAnimal()
  $shelter.each { | item |  puts item.inspect if item.class.to_s == "Animal" }
end


=begin
An animal should have a name.
An animal should have an age.
An animal should have a gender.
An animal should have a species.
An animal can have multiple toys.
=end