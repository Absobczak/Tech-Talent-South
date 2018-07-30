require_relative 'bear'
require_relative 'ninja'

class Battle
    
    def initialize(fighter1, fighter2)
        @fighter1 = fighter1
        @fighter2 = fighter2
    end
    
    def fight
       num = rand(1..10)
       
        if num ==2 || num == 4
           @fighter1.attack(@fighter2)
        end
       
        if num == 5 || num == 7
           @fighter2.attack(@fighter1)
        end
       
        if num !=2 || num !=4 || num !=5 || num !=7
           puts "Wow both of your aim is terrible"
        end
        
       battle_status
       health_check
    end
    
    
    def battle_status
        puts "#{@fighter1.name} has #{@fighter1.health} health left"
        puts "#{@fighter2.name} has #{@fighter2.health} health left"
    end
    
    def health_check
        if @fighter1.health < 0 
            puts "#{@fighter1.name} is dead"
        end
        if @fighter2.health < 0
            puts "#{@fighter2.name} is dead"
        end
    end
    
end    

fighter1 = Fighter.new("Son Goku", 1000000, 50000, 25000)
ninja = Ninja.new("Naruto", 500000, 35000, 15000)

puts "#{fighter1.name} is the first to enter the battle chamber"
puts "#{ninja.name} will be his opponent"
puts "Ready, set, fight!"

battle = Battle.new(fighter1, ninja)

until fighter1.health <= 0 || ninja.health <= 0
    battle.fight
end


