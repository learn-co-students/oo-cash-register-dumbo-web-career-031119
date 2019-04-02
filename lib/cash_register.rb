require "pry"
class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity = 1)
    # binding.pry
    if quantity > 1
      i = 0
      while i < quantity
        @item << title
        i += 1
      end
    else
      @item << title
    end
    self.total += price * quantity
    @last_transaction = @total
    return @total
  end

  def apply_discount
    # binding.pry
    if @discount > 0
      @percent = @discount/100.to_f
      @total = @total - (@total * @percent)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    # binding.pry
    @item
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
