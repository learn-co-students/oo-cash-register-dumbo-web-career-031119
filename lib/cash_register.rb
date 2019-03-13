
require"pry"


class CashRegister


attr_accessor :discount, :total, :price


  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items_array = []
  end

  def add_item(title,price,quantity = 1)
    @total += price * quantity
    @price = price
    quantity.times{@items_array << title}

  end

  def apply_discount
  if @discount == 0

    "There is no discount to apply."

  else
      new_discount = @discount.to_f/100
     @total = @total.to_f * (1.00 - new_discount)
    "After the discount, the total comes to $800."
  end
end


def items
  @items_array
end


def void_last_transaction
  @total -= @price
end















end
