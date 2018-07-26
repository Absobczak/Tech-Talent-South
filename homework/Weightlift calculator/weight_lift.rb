require_relative "weight_lift_class"

count = 0

puts "enter number"

plate_load = gets.chomp.to_i

    while  plate_load>=0
        new_num = plate_load - @p1
        puts new_num
        count += 1
   
    end


