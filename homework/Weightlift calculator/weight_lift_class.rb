class Bar
    
    def initialize(barweight, bar_right, bar_left)
        @@barweight = barweight = 45
        @bar_right = bar_right
        @bar_left = bar_left
    end
    
    def bar_side
        @bar_right = @bar_left
    end
    
end

class Weights
    
    def initialize(p1, p2, p3, p4, p5, p6)
       @p1 = p1
       @p2 = p2
       @p3 = p3
       @p4 = p4
       @p5 = p5
       @p6 = p6
    end
    
    def p1
        @p1 = 45
    end
    
    def p2
        @p2 = 35
    end 
    
    def p3
        @p3 = 25
    end
    
    def p4
        @p4 = 15
    end
    
    def p5
        @p5 = 10
    end
    
    def p6
        @p6 = 5
    end
    
end
       