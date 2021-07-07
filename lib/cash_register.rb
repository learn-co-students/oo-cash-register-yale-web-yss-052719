require 'pry'
class CashRegister
    attr_accessor :total, :discount, :last_value
    attr_reader :items

    def initialize(discount = 0)
        @total = 0
        @items = []
        @discount = discount
    end

    def add_item(title, price, quantity = 1)
        quantity.times do 
            @items << title
        end
        @total = @total + (price * quantity)
        @last_value = price
    end

    def apply_discount
        # binding.pry
        if discount != 0
            @total = @total - (@discount * 1.0 /100 * @total)
            "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        last_item = @items.pop
        @total = @total - @last_value
        return @total
    end


end