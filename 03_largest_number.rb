# Write a method that will take two numbers,
# and return whichever is the largest.
#
# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
# 
# If your stuck try working togeather
# 
# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
# 
# Examples - what if both numbers are equal or are strings?

def largest_number(*2numbers)
puts "Please enter the 2 numbers"
x = gets.to_i
puts "Please enter the second number"
y = gets.to_i
if x >  y then
  puts "#{x} is greater than #{y} \n"
elsif x == y then
  puts "#{x} and #{y} are both equal to each other.\n"
else 
  puts "#{y} is greater than #{x} \n"
end
end

largest_number


#def sample (*test)
#puts "The number of parameters is #{test.length}"
#for i in 0...test.length
#puts "The parameters are #{test[i]}"
#end
#end
#sample "Zara", "6", "F"
#sample "Mac", "36", "M", "MCA"