require_relative 'fighter'

class Bear < Fighter

    def initialize(name,health, power, defense)
        super(name, health, power, defense)
    end
    
    def attack(enemy)
        
        enemy.lose_health(self.power)
        puts "Don't underestimate my raw power!"
    end
    
end

fighter1 = Fighter.new("Son Goku", 1000000, 50000, 25000)

puts fighter1.name

bear = Bear.new("Broly", 2500, 500, 250)

bear.attack(fighter1)

puts fighter1.health

print fighter1.name
puts ": My Turn!"

fighter1.attack(bear)

puts bear.health
