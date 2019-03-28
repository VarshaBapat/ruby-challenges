# Write a program that accepts someone's name and age, and responds
# as shown here:

# Program is run and outputs:
# "What is your name?"

# User inputs: "Tom"

# Program outputs:
# "Hi Tom! How old are you?"

# User inputs: 40

# Program outputs:
# "Wow! You are 40 years old. Congratulations!"

puts "What is your name? \n"
name = gets
puts "Hello #{name}!!, Now tell me your age as well ! \n"
age = gets.to_i
puts "Thank you !! You are #{age} years old ! \n"
#this is a comment

# Beast mode challenge:
# Ater the above, the program calculates how many years until
# the user is 100 years old and tells the user. For example, for
# our user input above (Tom and 40), after outputing 
# "Wow! You are 40 years old. Congratulations!"
# The program also outputs:
# "Tom, in 60 years you will be 100 years old!"

x = 100 - age
puts "You will be 100 in #{x} years !! \n"