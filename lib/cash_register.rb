class CashRegister 

    attr_accessor :total, :discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @cart = Array.new
    end

    def add_item(item, price, quantity=1)
        @total += price * quantity 
        quantity.times do
            @cart.push(item)
        end
        @last_item_price = price * quantity
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            @total = @total - @total * @discount / 100 
            "After the discount, the total comes to $#{@total}."
        end
    end

    def items 
        @cart
    end

    def void_last_transaction
        @total -= @last_item_price
    end
end
