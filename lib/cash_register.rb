require "pry"
class CashRegister
    attr_accessor :total, :discount, :items, :last_item_price
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_item_price = 0
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do
            @items << title
        end
        @last_item_price = price
    end

    def apply_discount
        #binding.pry
        if @discount == 0
            "There is no discount to apply."
        else
            @total = @total.to_f - @total.to_f * (@discount.to_f/100)
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @last_item_price
    end
end

