require 'pry'

class CashRegister

	attr_accessor :total, :items, :last_transaction
	attr_reader :discount

	def initialize (employee_discount = 0)
		@total = 0
		@discount = employee_discount
		@items = []
		@last_transaction = {
			price: 0,
			quantity: 0
		}
	end

	def add_item (title, price, quantity = 1)
		for i in 1..quantity do
		self.total += price
		self.items << title
		end	
		self.last_transaction[:price] = price
		self.last_transaction[:quantity] = quantity

	end

	def apply_discount
		if discount == 0
			"There is no discount to apply."
		else
			@total *= (1.0-(discount/100.0))
			"After the discount, the total comes to $#{@total.to_i}."
		end
	end

	def reset_last_transaction
		self.last_transaction[:price] = 0
		self.last_transaction[:quantity] = 0
	end


	def void_last_transaction
		if self.last_transaction[:price] == 0

		else
			for i in 1..last_transaction[:quantity] do
				self.items.pop
				self.total -= self.last_transaction[:price]
			end
			reset_last_transaction
		end
	end

end