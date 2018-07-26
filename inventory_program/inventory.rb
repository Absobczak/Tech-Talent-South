require_relative "inventory_classes"

@category = ["Dairy", "Meat", "Produce"]
@product = []

milk = Product.new("Dairy", "milk(gallon)", 100, "65678", 0.80, 2.80, "July 25th, 2018")

@product.push(milk)

eggs = Product.new("Dairy", "eggs(by the dozen)", 250, "65689", 1.10, 3.50, "July, 30th, 2018")

@product.push(eggs)

ice_cream = Product.new("Dairy", "ice cream(carton)", 450, "75679", 1.50, 4.95, "August 30th, 2018")

@product.push(ice_cream)

butter = Product.new("Dairy", "butter(4 stick package)", 200, "66698", 0.48, 1.89, "July 31st, 2018")

@product.push(butter)

yogurt = Product.new("Dairy", "yogurt(6 pack)", 120, "66700", 0.25, 2.50, "July 31st, 2018")

@product.push(yogurt)


def start_menu
    
    puts "Sobczak's Super Store Inventory Control"
    puts "Please select which category you would like to view/edit:"
    puts "1.#{@category[0]}"
    puts "2.#{@category[1]}"
    puts "3.#{@category[2]}"
    puts "4. Enter new category"
    
    choice = gets.chomp.to_i
    
    case choice
        when 1
                dairy_menu
        when 2
            meat_menu
        when 3
            produce_menu
        when 4
            new_category
        else
            under_construction
    end
end

def dairy_menu
    
    
end

def meat_menu
    
    puts "We apologize but this feature is still under construction. Expected Christmas 2012"
    
    start_menu
    
end

def produce_menu
    
    puts "We apologize for the inconvenience, feature still under construction. Expected Christmas 2012"
    
    start_menu
    
end

def new_category
    
    puts "Please enter the new category you would like to add"
    
    start_menu
    
end

def under_construction
    
    5.times do
        puts "ERROR!"
    end
    
    puts "Feature not yet created, under construction, no set completion date."
    
    start_menu
    
end

start_menu
