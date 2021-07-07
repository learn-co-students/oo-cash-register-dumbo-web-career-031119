require 'pry'

class CashRegister

    attr_reader :discount
    attr_accessor :total, :items
  def initialize(new_discount = 0)
    @total = 0
    @discount = new_discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times{@items.push(title)}

  end
  
  def apply_discount
    #   binding.pry
    if @discount !=
      @total -= (@total * @discount/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
        "There is no discount to apply."
    end
  end

  def items
      @items
  end

  def void_last_transaction
    @total = 0
    @items = []
  end

end