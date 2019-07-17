
require 'pry'

class CashRegister

    attr_accessor :total, :discount, :title, :quantity, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @@cart = []
    end

    def add_item(title, price, quantity = 1)
        @title = title
        @price = price
        @quantity = quantity

        @total += @price * @quantity
      
        if @quantity >1
            @quantity.times do 
                @@cart << @title
        end
        else  
            @@cart << @title
        end
    end


    def apply_discount
        @total -= @total * @discount /100 
        @discount > 0 ? "After the discount, the total comes to $#{@total}." : "There is no discount to apply."
    end

    def items
        @@cart
    end

    def void_last_transaction
        @total -= self.total
        @total
    end

end