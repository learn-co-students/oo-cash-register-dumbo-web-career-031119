require'pry'

class CashRegister

attr_accessor :total, :discount
attr_reader :items

def initialize(discount=0)
  @total = 0
  @discount = discount
  @last_transaction = 0
  @items = []
end

def add_item(title,price,quantity=1)
  i=0
  @total += (price * quantity)
  @last_transaction = price * quantity
  @items << ("#{title} " * quantity).split
  @items.flatten!
end

def apply_discount
  if @discount == 20
    @total = self.total / 100 * (100 - @discount)
    return "After the discount, the total comes to $#{@total}."
  else
    return "There is no discount to apply."
  end
end

def void_last_transaction
  @total = @total - @last_transaction
end

end
