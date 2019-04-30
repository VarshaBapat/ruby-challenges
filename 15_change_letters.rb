# Write a program which will ask users for a string input.
# The program should display the input unless, it contains the letter 's'.

# If 's' is included change the output so that it will be 'th' instead.

# Examples:
# input = say hi
# output = thay hi

# input = mississippi
# output = miththiththippi

# Hint:
# Look up String on Ruby docs to help.

# Check your solution by running:
# ruby 15_change_letters.rb



# Your code here
puts "Please enter the input string:"
input_string = gets.strip
puts "Please enter the character to be replaced:"
input_char = gets.strip
input_array = input_string.split("")
output_array = []
output_array = input_array.map {|i| ((i == input_char.upcase || i == input_char.downcase)? "th" : i)}
puts output_array
output_string = output_array.join("")
puts output_string