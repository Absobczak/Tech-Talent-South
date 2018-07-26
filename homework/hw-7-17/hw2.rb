puts "Please provide a number"

num1 = gets.chomp.to_i

puts "Please provide a second number"

num2 = gets.chomp.to_i

if num1%num2 == 0
    puts "#{num1} and #{num2} are evenly divisible"
else
    puts "the remainder is #{num1%num2}"
    
end 
    