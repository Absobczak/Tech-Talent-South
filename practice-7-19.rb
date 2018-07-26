system "clear"

#Storing user info in an array and break loops
class Alien
    
    attr_accessor :name, :age
    
    def initialize(name, age)
        @name = name
        @age = age
    end

end

all_the_aliens = []

completion = false

puts "enter your info, type done when finished"

while completion == false
    
    print "Name:"
    name = gets.chomp
        if name == "done"
            completion == true
            break
        end
        
    print "Age: "
    age = gets.chomp
    profile = Alien.new(name, age)
    all_the_aliens.push(profile)
    puts "profile saved"
end

puts "Thank you for your submissions"

all_the_aliens.each do |person, age|
    
    puts person.name
    puts person.age
end

    
#Vehicle class exercise
class Vehicle
   
   attr_accessor :make, :model, :year, :speed, :value
   
    def initialize(make, model, year, speed, value)
        @make = make
        @model = model
        @year = year
        @speed = speed
        @value = value
    end

end

#Person class and modifiers and attr's
class Person
    
    attr_accessor :name, :age
    
    def initialize(name, age)
        @name = name
        @age = age
    end
    
    def birthday
        @age +=1
    end
    
    def change_name(new)
        @name = new
    end

end

my_profile = Person.new("Andy", 28)

puts "My name is #{my_profile.name} and I am #{my_profile.age} years old"

my_profile.birthday

my_profile.birthday

my_profile.change_name("The King")

puts "Hi I am now known as #{my_profile.name}, I'm now #{my_profile.age} years old"

# - Creating classes and initialization
class User
    
    def initialize(name, email, username, password)
        @name = name
        @email = email
        @username = username
        @password = password
    end
    
    def name
        @name
    end
    
    def email
        @email
    end
    
    def username
        @username
    end
    
    def password
        @password
    end
    
end

class Pet
    
    attr_accessor :name, :species, :breed
    
    def initialize(name, species, breed)
        @name = name
        @species = species
        @breed = breed
    end

    def sound
        case @species
            when "Dog"
                "Woof Woof"
            when "Cat"
                "Meow"
            when "Cow"
                "Mooo"
            else
                "That animal does not have a recognized sound but the fox says \"Ring a ding ding"
        end
    end
end

class Product
    
    attr_accessor :name, :cost, :quantity
        
    def initialize(name, cost, quantity)
        @name = name
        @cost = cost
        @quantity = quantity
    end
    
    def buy(x)
        @quantity += x
    end
    
    def sell(x)
        @quantity -= x
    end
    
end

my_pet = Pet.new("Killer", "Dog", "Chihuahua")

puts "My pet's name is #{my_pet.name} he is a #{my_pet.species} and his breed is #{my_pet.breed}, he makes a #{my_pet.sound} sound when he talks"

my_product = Product.new("Book", 11, 1500)

puts my_product.quantity

my_product.sell(1000)

my_product.buy(500)

puts my_product.quantity

puts all_the_aliens[2].name