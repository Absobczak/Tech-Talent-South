numbers = (1..100)

numbers.each do |x|
if (x%3) == 0
    puts "FIZZ"
elsif (x%5) == 0
    puts "BUZZ"
elsif (x%3) == 0 && (x%5) == 0
    puts "FIZZBUZZ"
else
    puts x
end
end

