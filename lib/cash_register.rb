
class CashRegister

	def initialize(discount= 0)
		@total = 0.0
		@discount = discount
		@items = []
	end

	attr_accessor :total, :last
	attr_reader :discount, :items

	def add_item(title, price, quantity=1)
		quantity.times do
			@items << title
			@total += price
			@last = {title => price}
		end
	end

	def apply_discount
		if @discount == 0
			"There is no discount to apply."
		else
			@total = @total * (1 - @discount/100.0)
			"After the discount, the total comes to $#{@total.to_i}."
		end
	end

	def void_last_transaction
		@total -= @last[@last.keys[0]]
		@items.delete(@last.keys[0])
	end


end
