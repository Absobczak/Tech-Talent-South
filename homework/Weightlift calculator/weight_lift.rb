require_relative "weight_lift_class"

@bar = 45


def plate_load_total

    puts "enter number desired lifting weight"

    @desired_weight = gets.chomp.to_i

    plate_load = @desired_weight - @bar

    puts plate_load


        if plate_load - @plates_total[0] >= 0
            forty_five(plate_load)
        end
        
        if plate_load < 90
            if plate_load - @plates_total[1] >= 0
                thirty_five(plate_load)
            elsif plate_load - @plates_total[1] < 0
                if plate_load - @plates_total[2] >= 0
                    twenty_five(plate_load)
                elsif plate_load - @plates_total[2] < 0
                    if plate_load - @plates_total[3] >= 0
                        fifteen(plate_load)
                    elsif plate_load - @plates_total[3] < 0
                        if plate_load - @plates_total[4] >= 0
                            ten(plate_load)
                        elsif plate_load - @plates_total[4] < 0
                            if plate_load - @plates_total[5] >= 0
                                five(plate_load)
                            elsif plate_load - @plates_total[5] < 0
                                puts "Invalid selection, please try again"
                                plate_load_total
                            
                            end
                        
                        end
                    
                    end
                
                end
    
            end
        end
end

plate_load_total




            
