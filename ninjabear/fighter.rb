class Fighter
    
    attr_reader :name
    attr_accessor :health, :power
    
    def intialize(name, health, power, defense)
        @name = name
        @health = health
        @power = power
        @defense = defense
    end
    
end

fighter1 = Fighter.new("Son Goku", 1000, 50000, 25000)

puts fighter1.name
