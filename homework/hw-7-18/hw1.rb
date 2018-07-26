def multiplication(x,y)
    
    product= x * y
    
    puts product
    
end

def division(x,y)
    
    product= x.to_f / y.to_f
    
    puts product.round(2)
    
end

def subtraction(x, y)
    
    product = x-y
    
    puts product
    
end

def addition(x,y)
    
    product = x + y

    puts product
    
end

puts "Please provide two numbers"

num1 = gets.chomp.to_i
num2 = gets.chomp.to_i

puts "What arithmatic would you like to do?"

answer = gets.chomp.downcase

case answer
    when "multiplication", "multiply"
        multiplication(num1, num2)
    when "division", "divide"
        division(num1, num2)
    when "add", "addition"
        addition(num1, num2)
    when "subtract", "subtraction"
        subtraction(num1, num2)
    else
        puts "Not a valid response"
end

    
