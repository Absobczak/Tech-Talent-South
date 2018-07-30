require_relative 'fighter'

class Ninja < Fighter
    
    def intialize(name, health, power, defense)
        super(name, health, power, defense)
    end
    
    def attack(enemy)
        puts "Never giving up is my ninja way"
        
        enemy.lose_health(self.power)
    end

end

ninja = Ninja.new(" Naruto", 500000, 25000, 15000)

