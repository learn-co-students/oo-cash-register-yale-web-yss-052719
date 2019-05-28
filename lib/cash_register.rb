class CashRegister
    attr_accessor :total, :discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end


    
    def add_item(title, price, quantity = 1)
        @total += quantity * price
        quantity.times do
            @items << title
        end
        @transaction_last = price * quantity

    end

    def apply_discount
        if discount != 0
            @total = (@total * (100.0 - @discount)/ 100).to_i
             "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @transaction_last
    end

end
