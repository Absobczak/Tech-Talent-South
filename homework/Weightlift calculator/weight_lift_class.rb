@plates_per_side = [45, 35, 25, 15, 10, 5]
@plates_total = [90, 70, 50, 30, 20, 10]

@count_45 = 0
@count_35 = 0
@count_25 = 0
@count_15 = 0
@count_10 = 0
@count_5 = 0

class Bar
    
    def initialize(barweight, bar_right, bar_left)
        @@barweight = barweight = 45
        @bar_right = bar_right
        @bar_left = bar_left
    end
    
    def bar_side
        @bar_right = @bar_left
    end
    
end

def forty_five(plate_load)

    while plate_load >= 90
        plate_load = plate_load - @plates_total[0]
        @count_45 += 1
        if plate_load == 0
              puts "You will need #{@count_45} 45 lbs plates on each side to give you the desired weight of #{@desired_weight}"
            elsif plate_load < 90 && plate_load != 0
            thirty_five(plate_load)
        
        end    
        
    end
    
  
    @count_45 = 0
    
    plate_load_total
    
end 

def thirty_five(plate_load)

    while plate_load >= 70
        plate_load = plate_load - @plates_total[1]
        @count_35 += 1
       
        if plate_load == 0
                puts "You will need #{@count_45} 45 lbs and #{@count_35} 35 lbs plates on each side to give you the desired weight of #{@desired_weight}"
            elsif plate_load < 0 && plate_load !=0
                twenty_five(plate_load)
            
        end
        
    end
    
    @count_45 = 0
    @count_35 = 0
    plate_load_total
    
end


def twenty_five(plate_load)

    while plate_load >= 50
        plate_load = plate_load - @plates_total[2]
        @count_25 += 1
        if plate_load == 0
                puts "You will need #{@count_45} 45 lbs, #{@count_35} 35 lbs, and #{@count_25} plates on each side to give you the desired weight of #{@desired_weight}"
            elsif plate_load < 50 && plate_load != 0
                fifteen(plate_load)
            
        end
        
    end
    
    @count_45 = 0
    @count_35 = 0
    @count_25 = 0
    
    plate_load_total
    
end 

def fifteen(plate_load)

    while plate_load >= 30
        plate_load = plate_load - @plates_total[3]
        @count_15 += 1
        if plate_load == 0
            puts "You will need #{@count_45} 45 lbs, #{@count_35} 35 lbs, #{@count_25}, and #{@count_15} plates on each side to give you the desired weight of #{@desired_weight}"
            elsif plate_load < 30 && plate_load != 0
                ten(plate_load)
            
        end
        
    end
    
    @count_45 = 0
    @count_35 = 0
    @count_25 = 0
    @count_15 = 0
    
    plate_load_total
    
end 

def ten(plate_load)

    while plate_load >= 20
        plate_load = plate_load - @plates_total[4]
        @count_10 += 1
        if plate_load == 0
                puts "You will need #{@count_45} 45 lbs, #{@count_35} 35 lbs, #{@count_25}, #{@count_15}, and #{@count_10} plates on each side to give you the desired weight of #{@desired_weight}"
            elsif plate_load < 20 && plate_load != 0
                five(plate_load)
            
        end
        
    end
    
    @count_45 = 0
    @count_35 = 0
    @count_25 = 0
    @count_15 = 0
    @count_10 = 0
    plate_load_total
    
end 

def five(plate_load)

    while plate_load >= 10
        plate_load = plate_load - @plates_total[5]
        @count_5 += 1
            if plate_load == 0
                puts "You will need #{@count_45} 45 lbs, #{@count_35} 35 lbs, #{@count_25}, #{@count_15}, #{@count_10}, and #{@count_5} plates on each side to give you the desired weight of #{@desired_weight}"
            else
                puts "error"
            end
            
        
    end
    
    @count_45 = 0
    @count_35 = 0
    @count_25 = 0
    @count_15 = 0
    @count_10 = 0
    @count_5 = 0
    plate_load_total
    
end 