require "pry"
class CashRegister

    attr_accessor :total, :discount, :items, :last_price
    

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = nil)
        if quantity == nil
            self.total += price
            @items << title
            @last_price = price
        else
            self.total += price * quantity
            quantity.times {@items << title}
            @last_price = price
        end
    end

    def apply_discount
        if discount == nil
            "There is no discount to apply."
        else
            self.total -= self.total * self.discount / 100
            "After the discount, the total comes to $#{self.total.to_i}."
        end
    end


    def void_last_transaction
        self.total -= self.last_price
    end
end
