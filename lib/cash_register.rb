class CashRegister
    attr_reader :discount
    attr_accessor :total, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(item, price, quantity = 1)
        quantity.times do #another type of loop
            @items << item #item has to be in the argument for it to be defined
        end
        @last_item = []
        @last_transaction = price * quantity #since it's an instance variable, it will reset each time to the last transaction
        @total += @last_transaction
    end

    def apply_discount
        return "There is no discount to apply." if @discount == 0
            @total = @total - (@total * @discount / 100)
            "After the discount, the total comes to $#{total}."
    end

    def void_last_transaction
        @total -= @last_transaction #how to take out the last transaction
        # @last_quantity.times do #how to take out the last item 
        #     @items.pop()
        # end
    end

end
