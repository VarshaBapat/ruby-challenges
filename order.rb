
# Part 2
# Lattes sell for $4, and cost $2 to make
# Scones sell for $5, and cost $3 to make
# Tea sells for $3, and cost $0.50 to make

# Print out the total profit for the orders you have.
Class Order
    def initialize(item,quantity,cost,price)
        @item = item
        @quantity = quantity
        @cost = cost
        @price = price
    end
end