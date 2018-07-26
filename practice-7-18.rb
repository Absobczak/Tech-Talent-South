system "clear"

def float_check(num)
    
        if num.include?(".")
            return true
        else
            return false
        end
    
end

def zero_check (num)
    
        if num == "0"
            return true
        else
            return false
        end
    
end

def take_number
    puts "provide a number"
    num = gets.chomp
    
    if float_check(num)
        puts "thats a float, I meant an integer"
        take_number
    else
        if zero_check(num)
            puts "that's a zero, try again"
            take_number
        else
            return num.to_i
        end
    end
end


arr = []

2.times do
    var = take_number
    arr.push(var)
end

arr.sort!

if arr[1] % arr[0] == 0
    puts "No remainder, the answer is #{arr[1]/arr[0]}"
    
else
    puts "the answer is #{arr[1]/arr[0]} with a remainder of #{arr[1]%arr[0]}"
    
end


