require 'pry'

class CashRegister
attr_accessor :total, :discount, :cart, :transaction


def initialize(discount=0)
  @total = 0
  @discount = discount
  @cart = []
end



def add_item(title, price, quantity=1)
@price = price
self.total += (price * quantity)
cart << (title + " ") * quantity
@transaction = (price * quantity)
end


def apply_discount
if discount == 0
  "There is no discount to apply."
else
  percent_discount = @discount.to_f/100
  @total = @total.to_f * (1.00 - percent_discount )
  "After the discount, the total comes to $#{@total.to_i}."
end
end

def items
  @cart.join.split
end

def void_last_transaction
  self.total -= @transaction
end

end
