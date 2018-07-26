require 'prime'

puts "Please enter a number"

num = gets.chomp.to_i

Prime.each(num)do |prime|
    puts prime
    
end
