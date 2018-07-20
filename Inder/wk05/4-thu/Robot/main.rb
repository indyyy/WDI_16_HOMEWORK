require 'pry'
require_relative 'robot'

hash = {}
input = nil
while input != "Q"
  print "<Enter Robot Name> or (Q)uit: "
  input = gets.chomp.to_s.upcase
  if hash.key?(":#{input}")
    puts "Resetting to Factory"
    puts "Resetting to Factory"
  else
    hash[":#{input}"]= Robot.new.name
    puts hash[":#{input}"]
    puts hash[":#{input}"]
    puts hash[":#{input}"]
  end
  #hash = {input => 'test'}
end
#Robot.generate_name