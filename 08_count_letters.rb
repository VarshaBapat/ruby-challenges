# Count Letters

# Write a method that will take a string, keep count
# of each letter and return the totals as a hash.

# Example:
# count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, "o"=>1}
# count_letters("mississippi") should return {"m"=>1, "i"=>4, "s"=>4, "p"=>2}

# Check your solution by running the tests:
# ruby tests/08_count_letters_test.rb

def count_letters (input_string)
  result = {} # You'll need an empty hash to get started!
  input_array = input_string.downcase.split('')
  #puts input_array
  unique_array = input_string.downcase.split('').uniq
  #puts unique_array
  count_array = Array.new
  unique_array.each_index {|i| count_array[i] = input_array.count(unique_array[i])}
  puts count_array
  count_array_length = count_array.length
  i = 0
  while i < count_array_length do
  result.store(unique_array[i],count_array[i])
  i+= 1
  end
  return result # return the hash
end

#a.each {|x| print x, " -- " }

result = count_letters("aaaabbbbbccddcccceghjjjklmmmmnoooopqrsqqtsdfeg")
puts result
=begin
a = [1,2,3,4,5]
b = Array.new
b = a.collect
puts b
=end






