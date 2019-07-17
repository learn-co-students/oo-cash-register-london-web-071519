
class CashRegister
    attr_accessor :total, :discount, :quantity

    # Initialize optional discount, total, and items array
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    # Min Qty can only be 1
    def add_item(title, price, quantity = 1)
        @price = price
        @title = title
        @quantity = quantity
        #If two tomatoes are in the basket, they would go into the array individually
        @quantity.times {@items << @title}
        self.total += @price * @quantity
    end

    def items
        @items
    end
    
    def apply_discount  
        #Have to use to a float number to get the result. Type conversion to integer.
        self.total -= (0.01 * @discount * @total).to_i
        @discount == 0 ?  "There is no discount to apply." : "After the discount, the total comes to $#{self.total}."
    end

    def void_last_transaction
        # price and quantity have the information from the last transaction
        self.total -= @price * @quantity
    end
end

