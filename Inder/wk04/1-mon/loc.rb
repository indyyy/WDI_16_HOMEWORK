require 'pry'
puts("Enter filename: ")
filename = gets.chomp
line_count=0
File.readlines(filename).each do |line|
    line_count += 1
end
puts ("There are #{line_count} lines")

