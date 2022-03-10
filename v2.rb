#Program to calculate the total price of grocery selected.
class Grocery
    @@grocery = {} #class variable
    def initialize(item, cost)
      @@grocery[item] = cost
    end
  
    def self.all
      @@grocery
    end
end
  
class Product #class created for item which is on sale
    @@product = {}
    def initialize(item, unit, cost)
      @@product[item] = { 'unit' => unit, 
                          'cost' => cost}
    end
  
    def self.all
      @@product
    end
end

