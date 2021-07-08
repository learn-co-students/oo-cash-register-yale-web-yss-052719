require 'pry'


class CashRegister

    attr_accessor :total, :discount, :items, :last_item

def initialize (discount=0)
@total = 0
@discount = discount
@items = []
@last_item = {}
end

def total
    @total
end

def add_item (title,price,quantity = 1)
self.total = self.total + (price*quantity)
for i in 0..quantity-1
self.items << title
end
self.last_item = {"title" => title, "price" => price, "quantity" => quantity}
end

def apply_discount
    if self.discount == 0
        "There is no discount to apply."
    else
    discount = @discount
    total = self.total.to_f
    total = total * ((100.0-discount)/100.0)
    self.total = total
    "After the discount, the total comes to $#{total.to_i}."
    end
end    

def void_last_transaction
total = self.total
items = self.items
total = total - self.last_item["price"]
items = items.pop
self.total = total
end



end

