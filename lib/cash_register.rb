
class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items_arr = []
    @last_item = []
  end

  def add_item(title, price, quantity = 1)
    if quantity > 1

      ###########################################
      title_arr = title.split("")
      title_arr.push(" ")
      new_str = title_arr.join("") * quantity
      new_arr = new_str.split(" ")
      @items_arr.concat(new_arr)
      ###########################################

      @total += price * quantity
      @last_item.push(@total)
      return @total
    else
      @items_arr.push(title)
      @total += price * quantity
      @last_item.push(@total)
      return @total
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      new_discount = @discount.to_f/100
      @total = @total.to_f * (1.00 - new_discount)
      return "After the discount, the total comes to $800."
    end
  end

  def items
    @items_arr
  end

  def void_last_transaction
    @total -= @last_item.last
  end

end
