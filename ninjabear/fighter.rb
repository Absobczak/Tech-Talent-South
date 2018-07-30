class Fighter
    
    attr_reader :name
    attr_accessor :health, :power, :defense
    
    def initialize(name, health, power, defense)
        @name = name
        @health = health
        @power = power
        @defense = defense
        
    end
    
    def attack(enemy)
        enemy.lose_health(self.power)
    end
    
    def lose_health(power_attacker)
       
        if self.defense > power_attacker
           self.health = 0
           puts "You're outclassed, you can't even scratch me"
           
        elsif 
            new_power_attacker = (power_attacker - self.defense)
            self.health -= new_power_attacker
        end
        
    end
end



