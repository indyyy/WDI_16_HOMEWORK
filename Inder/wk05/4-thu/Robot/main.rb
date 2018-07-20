require 'pry'
require_relative 'robot'

hash = {}
input = nil
while input != "Q"
  print "<Enter Robot Name> or (Q)uit: "
  input = gets.chomp.to_s.upcase
  if hash.key?(":#{input}")
    #binding.pry
    puts "Resetting to Factory"
    #binding.pry
    puts hash[":#{input}"].reset
  else
    hash[":#{input}"]= Robot.new
    puts hash[":#{input}"].name
    puts hash[":#{input}"].name
    puts hash[":#{input}"].name
  end
  #hash = {input => 'test'}
end
#Robot.generate_name