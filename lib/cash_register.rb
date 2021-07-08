
class CashRegister
  
  attr_accessor :total, :discount, :price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items_array = []
  end
  def add_item(title, price, quantity = 1)
    @price = price
    quantity.times {@items_array << title}
    self.total += (quantity * price)
  end
  def apply_discount
    if @discount > 1
   @total = @total * (1.00 - @discount.to_f/100)
   "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
   end
  end 
  def items 
    @items_array
  end   
  def void_last_transaction 
    @total -= @price
  end  
  
end  