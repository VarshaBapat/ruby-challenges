require_relative 'order'
# This challenge has three parts. Use all you have learned to
# implement the solution. Use methods to keep your code DRY and
# clean. Use data structures that are appropriate.
# Make notes for anything you are unsure about.

# Part 1
# You are working at a cafe where you have a current backlog of orders:
# 6 lattes
# 2 scones
# and
# 3 teas

# Write a program that asks the customer for their order. The customer
# will only order one item.
#   if they order a latte, add one to the number of lattes you need to make,
#   if they order a scone, add one to the number of scones you need to serve,
#   if they order a tea, add one to the number of teas you need to make

# Print the final order so you know what to make.

#==================Start of Part 1 of Cafe===============

flag = 1
pending_customer_order = []
while (flag == 1) do
    puts "What do you want to order? Choose from the following options [1. latte 2. scone 3. tea].\n
        To Quit, enter (q):"
    customer_order_item = gets.downcase.chomp
    case customer_order_item
        when "latte"
            pending_customer_order[:latte]+= 1
        when "scone"
            pending_customer_order[:scone]+= 1
        when "tea"
            pending_customer_order[:tea]+= 1
        when "q"
            return
        else
            puts "Sorry we don't have that option."
            flag = 0
            return
    end
    pending_customer_order = [{},{},{},{}]
end
puts "Your Order :"


# Part 2
# Lattes sell for $4, and cost $2 to make
# Scones sell for $5, and cost $3 to make
# Tea sells for $3, and cost $0.50 to make
=begin
# Print out the total profit for the orders you have.
def calculate_cost(pending_customer_order)
    pending_customer_order.each do |k,v|
        case k
        when :latte
            v = v*4
        when :scone
            v = v*5
        when :tea
            v = v*3
        else
            puts "Looks like the user input is invalid"
            return
        end
    end
    return pending_customer_order
end

calculate_cost(pending_customer_order)
=end
# Part 3
# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the order
#   Print the total price

# Example:
# What would you like to order (latte, scone, tea)? Type (q)uit to quit.
# latte
# How many?
# 2
# Anything else? Type (q)uit to quit.
# tea
# How many?
# 1
# Anything else? Type (q)uit to quit.
# coffee
# I'm sorry, we don't serve that. Would you like latte, scone, or tea? Type (q)uit to quit.
# q
# Thank you! Your order:
# 2 latte
# 1 tea
# Order total: $11.00

