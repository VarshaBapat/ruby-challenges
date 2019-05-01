# Unique

# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.

# Difficulty:
# 5/10

# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]

# Hints:
# A hash could be helpful in your solution.

# Check your solution by running the tests:
# ruby tests/10_unique_test.rb

def unique(input_array)
  #unique_array.each_index {|i| count_array[i] = input_array.count(unique_array[i])}
  output_array = []
  input_array.each do |i|
  #output_array << (output_array.include?(i) ? "nil" : i)
  output_array << if ! output_array.include?(i)
  end
  #output_array.delete("nil")
  puts output_array
end

unique([1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2])
