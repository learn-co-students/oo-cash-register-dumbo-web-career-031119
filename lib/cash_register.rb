require 'pry'
class CashRegister
    attr_reader :items
    attr_accessor :total, :discount

    def initialize(discount = 0.00)
        @total = 0
        @discount = discount
        @items = Array.new
    end
    def add_item(name,price,quantity = 1)
        @total += price*quantity
        while quantity > 0 do
        @items << name
        quantity -= 1
        end
    end
    def apply_discount
        if discount === 0 || discount === nil
            return "There is no discount to apply."
        else
        @total = total-total*discount/100
        return "After the discount, the total comes to $#{total}."
        end
    end
    def void_last_transaction
        @total = 0
    end
end