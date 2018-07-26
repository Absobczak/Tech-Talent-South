class Calculator
    
    attr_accessor :num1, :num2
    
    def initialize(num1, num2)
       @num1 = num1
       @num2 = num2
    end
    
    def add
        @num1 + @num2
    end
    
    def minus
        @num1 - @num2
    end
    
    def multiplication
        @num1 * @num2
    end
    
    def divide
        @num1.to_f / @num2
    end
    
end

