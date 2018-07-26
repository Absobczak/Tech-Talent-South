#1.
puts "please provide your name"
name =  gets.chomp
puts "Hello #{name}. Nice to meet you"

puts "----------------------------------"

#2.
def sum_num(x,y,z)
   
   sum = x + y + z
   puts sum

end

sum_num(5, 10, 300)

puts "----------------------------------"

#3
to_do = ["wash the car", "buy groceries", "finish homework", "pay the bills"]

to_do.each do |x|
    puts "Don't forget to #{x}"
end

puts "----------------------------------"

#4.
def avg(a, b, c, d)

    total =a + b + c + d

    avg = total / 4

    puts "#{c + d}"
    
end

avg(5, 8, 6, 10)

puts "----------------------------------"

#5.
puts "5. Sarah"

puts "----------------------------------"

# 6.
wild_cats= ['cheetah', 'lion', 'leopard', 'tiger']

wild_cats.push("bobcat")

puts wild_cats

puts "----------------------------------"

#7.
user1 = {:firstname=> "Johnny", :lastname => "Begood", :gender => "male", :dob => "08/21/1981", :birthplace => "Seattle, WA"}

puts user1[:birthplace]

puts "----------------------------------"

#8.
user1.merge!(:current_city=> "Atlanta, GA")

puts user1

#9.
alpha_soup= ["c", "k", "y", "u"]

puts alpha_soup[2]

puts "----------------------------------"

#10.
alphabits= {"d" =>4, "k" => 14, "u" => 52}

puts alphabits["k"]

puts "----------------------------------"

#11. & 12.
array = []

count = 0

num = rand(1..10)

puts num

array.push(num)

while num != 3
    num = rand(1..10)
    array.push(num)
    puts num
    
end

puts "----------------------------------"

array.each do |x|
        if x<6
            count += 1
        else
            count +=0   
        end
end

puts "There are #{count} numbers under 6"

puts "----------------------------------"

#13.
class Vehicle

    def initialize(color, type)

        @color = color
        @type = type   # car, truck, motorcyle, scooter, van

    end

    def honk

        puts "Beep!"

    end

end

beetle = Vehicle.new("red", "car")

beetle.honk