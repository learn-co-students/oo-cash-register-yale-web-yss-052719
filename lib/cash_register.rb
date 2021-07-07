class CashRegister

    attr_reader :discount, :title, :items, :last_transaction
    attr_accessor :total    



    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @title = title
        @price = price
        @quantity = quantity
        @total += (price*quantity)
        quantity.times do
            @items << title
        end
        @last_transaction = price*quantity
    end

    def apply_discount
        if discount > 0
            @total = @total - @total * @discount / 100.00
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= last_transaction
    end
    ## do I need to make @total self.total instead?
end

