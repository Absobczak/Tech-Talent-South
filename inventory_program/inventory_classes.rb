class Product
    
    attr_accessor :category_nam, :name, :quantity, :id, :cost, :sell_price, :sell_by
    
    def initialize(category, name, quantity, id, cost, sell_price, sell_by)
        @category_nam = category
        @name = name
        @quantity = quantity
        @id = id
        @cost = cost
        @sell_price = sell_price
        @sell_by = sell_by
    end
    
end