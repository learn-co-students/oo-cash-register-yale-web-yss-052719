require "pry"

class CashRegister
    attr_accessor :total, :discount, :price, :items, :last_transaction
    
    def initialize(discount = 0, total = 0)
        @total = total
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        @price = price
        @total += price * quantity
        if quantity > 1
            counter = 0
            while counter < quantity
                @items << item
                counter += 1
            end
        else
            @items << item
        end
    @total         
    end


    def apply_discount
        if @discount > 0
            @discount = @discount/100.to_f
            @total = @total - (@total * @discount)
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        return @items
    end

    def void_last_transaction
        @total -= @price
    end
end