class Client 
  attr_accessor :name, :numchild, :age, :pets

#defadopt(animal)
#  adoptindex = $shelter.name.find_index(animal)
#  $shelter[adoptindex]. = animal
#
#end

end


def createClient()
  $shelter.push(Client.new)
  print "Enter Client name: "
  $shelter[-1].name = gets.chomp
  print "Enter Client number of children: "
  $shelter[-1].numchild = gets.chomp
  print "Enter Client age: "
  $shelter[-1].age = gets.chomp
  print "Enter Client pets: "
  $shelter[-1].pets = gets.chomp
end

def dispClient()
  $shelter.each { | item |  puts item.inspect if item.class.to_s == "Client" }
end


=begin
A client should have a name.
A client should have a number of children.
A client should have an age.
A client should have a list of pets.
=end

