class CashRegister
    attr_accessor :total, :discount, :last_transaction
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(name, price, quantity = 1)
        @total += price*quantity
        for i in 1..quantity
            @items << name
        end
        @last_transaction = price*quantity
    end

    def items
        @items
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            @total = @total - @discount * @total / 100
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end
