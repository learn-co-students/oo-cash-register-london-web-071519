require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 0)
        @items << title
        if price > 0
            if quantity > 0
            self.total += price * quantity
                quantity.times do
                @items << title
                end
                @items.pop
            else
            self.total += price
            end
        end      
    end

    def apply_discount
        if @discount != 0
            self.total -= (self.total * @discount)/100
            "After the discount, the total comes to $#{@total}."
        else
            self.total
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.total
    end
end