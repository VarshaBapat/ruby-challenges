# Sum Numbers

# Write a method that will take an array of numbers,
# and return their sum.

# Example:
# sum_numbers([1,1,1]) should return 3
# sum_numbers([5,2,100,0,10]) should return 117

# Check your solution by running the tests:
# ruby tests/04_sum_numbers_test.rb

def sum_numbers (numbers)
  sum = numbers.reduce {|a,b| a+b}
end

numbers =[1.2,2.3,3.4,4.5,5.6]
sum = sum_numbers (numbers)
puts "Sum of all the numbers of the array is : #{sum}"


# OPTIONAL:
# Go to the tests folder and open 04_sum_numbers_test.rb.
# Read over the tests and see if you can understand them.

# Try add at least three more tests, and test at least 2 corner cases.

# Hint:
# You could test what happens when you call sum_numbers([])?
