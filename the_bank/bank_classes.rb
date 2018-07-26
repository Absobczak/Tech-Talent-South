class Customer
 
    attr_accessor :name, :location, :pin
   
    def initialize(name, location, pin)
        @name = name
        @location = location
        @pin = pin
    end
    
end


class Account
    
    attr_reader :acct_num
    
    attr_accessor :customer, :acct_type, :balance
    
    def initialize(customer, balance, acct_num, acct_type)
        @customer = customer
        @balance = balance
        @acct_num =  acct_num
        @acct_type = acct_type
     
    end
    
    def deposit
        
        puts "How much would you like to deposit today?"
        print "$"
        
        deposit = gets.chomp.to_f
        
        @balance += deposit
        
        puts "Your current balance is now $#{@balance}"
        
    end
        
    def withdrawal
        
        puts "How much would you like to withdraw today?"
        print "$"
        
        withdrawal = gets.chomp.to_f
        
        if withdrawal > @balance
            puts "You have insufficient funds, do you still want to proceed, you will be charged an overdraft fee?"
            answer = gets.chomp.downcase
            
            if answer == "yes"
                @balance -= (withdrawal + 35)
            end
            
            else
                @balance -= withdrawal
        end
        
        puts "Your current balance is $#{@balance}"
    end
    
end
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        