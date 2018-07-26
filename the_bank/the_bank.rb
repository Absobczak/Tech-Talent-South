require_relative 'bank_classes'

@customer = []
@account = []

def welcome_screen
    
    @current_customer = ""
    
    puts "Welcome to The Bank. Please choos from the following options"
    puts "-------------------"
    puts "1. Customer Sign-in"
    puts "2. New customer registration"

    
    choice = gets.chomp.to_i
    
    case choice
        when 1
            sign_in
        when 2
            sign_up("", "", "")
        else
            puts "Invalid selection, please selected again from the given options"
            welcome_screen
    end
        
end

def sign_in
    
    puts "What is your name?"
    
    name = gets.chomp
    
    puts "Nice to meet you, I am Automated Teller Machine With Personality, or ATMWP for short"
    
    puts "What's your location?"
    
    location = gets.chomp
    
    puts "Crazy, I'm at #{location} too!"
    
    puts "Would you please verify your account by entering your pin"
    
    pin = gets.chomp
    
    if @customer.empty?
        puts "No customer found, we'll go ahead and get you signed up so we can be friends"
        
        sign_up(name, location, pin)
    end
    
    customer_exists = false
    
    @customer.each do |customer|
        if name == customer.name && location == customer.location && pin = customer.pin
            @current_customer = customer
            customer_exists = true
        end
    end
    
    if customer_exists
        puts "To be directed to the 'Account Menu' please verify you pin for security purposes"
        puts "Enter pin here:"
        pin = gets.chomp
    
        if pin == @current_customer.pin
            account_menu
        else
            puts "Invalid pin, please try again:"
            pin = gets.chomp
        end
        account_menu
        
    else
        puts "I'm sorry new friend, it doesn't seem you are found as a customer, what would you like to do?"
        puts "1. Try again"
        puts "2. Sign up"
        choice = gets.chomp.to_i
        
        case choice
            when 1
                sign_in
            when 2
                sign_up(name, location, pin)
            else
                puts "Invalid selection, please try again"
                choice = gets.chomp.to_i
        end

    end

end

def sign_up(name, location, pin)
    
    if name == "" && location == "" && pin == ""
        puts "Please enter your name"
        name = gets.chomp
        puts "Nice to meet you, I am Automated Teller Machine With Personality, or ATMWP for short"
        
        puts "Please enter your location"
        location = gets.chomp
        puts "Crazy I'm at #{location} too!"
        
        puts "Please enter a pin for verification purposes"
        pin = gets.chomp
    end
    
    @current_customer = Customer.new(name, location, pin)
    
    @customer.push(@current_customer)
    
    puts "Registration complete, we look forward to working with you"
    
    puts "To be directed to the 'Account Menu' please verify you pin for security purposes"
    puts "Enter pin here:"
    pin = gets.chomp
    
    if pin == @current_customer.pin
        account_menu
    else
        puts "Invalid pin, please try again:"
        pin = gets.chomp
    end
    
end

def account_menu
    
    puts "Account Menu"
    puts "----------------"
    puts "1. Create new account"
    puts "2. Review an existing account"
    puts "3. Ask me my favorite color and season"
    puts "4. Sign Out"
    
    choice = gets.chomp.to_i
    
    case choice
        when 1
            create_account
        when 2
            review_account
        when 3
            favorites
        when 4
            puts "Thank you, have a great day new best friend"
            welcome_screen
        else
            puts "Invalid selection, please try again"
            account_menu
    end
    
end

def create_account
    puts "What type of account will you be opening? Checking or Savings?"
    acct_type = gets.chomp.downcase
    
    puts "How much will your initial deposit be?"
    amount = gets.chomp.to_f
    
    new_acct = Account.new(@current_customer, amount, @account.length+150000, acct_type)
    
    @account.push(new_acct)
    
    puts "Account created, great job!"
    
    account_menu

end

def review_account
    
    @current_account = ""
    
    puts "Which account type do you want to review?"
    
    type = gets.chomp.downcase
    
    account_exists = false
    
    @account.each do |account|
        if @current_customer == account.customer && type == account.acct_type
            @current_account = account
            account_exists = true
            
        end
    end
    
    if account_exists
        current_account_action
    else
        puts "Could not find account I'm sorry champ, please try again"
        account_menu
    end
    
end

def current_account_action
    
    puts "Please choose from the following"
    puts "------------------------------------"
    puts "1. Check your balance"
    puts "2. Make a deposit"
    puts "3. Make a withdrawal"
    puts "4. Return to account menu"
    puts "5. Leave a nice message for me for later"
    puts "6. Sign out"
    
    choice = gets.chomp.to_i
    
    case choice
        when 1
            puts "Your current balance is #{@current_account.balance}"
            current_account_action
        when 2
            @current_account.deposit
            current_account_action
        when 3
            @current_account.withdrawal
            current_account_action
        when 4
            review_account
        when 5
            puts "Input message"
            message = gets.chomp
            puts "Awe, you're such a good friend"
            current_account_action
        when 6
            welcome_screen
        else
            puts "Invalid choice"
            current_account_action
    end
    
end

def favorites
    
    puts "Thanks for caring so much to find out more about me new friend"
    puts "What do you think my favorite color is?"
    color = gets.chomp.downcase
    
    if color == "human"
        puts "How did you know my favorite color was #{color}, you human's are just so pretty to me"
    else
        puts "Nice try, #{color} is a pretty color, but my favorite color is humans, you all are so pretty"
    end
    
    puts "What do you think my favorite season is?"
    season = gets.chomp.downcase
    
    if season == "summer"
        puts "You're absolutely right, you know me so well!"
    else
        puts "Nice try, my favorite season is summer because more people visit me and my circuits are kept warm by the sun"
    end
    account_menu
end

welcome_screen


        