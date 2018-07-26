system "clear"


def convert (arr)
    
    hash = {}
    
    arr.each_with_index do |x, index|
        
        hash[index] = x
    
    end
    
    return hash
end

out_array = %w(dog cat job pizza life)

puts convert(out_array)

    
    