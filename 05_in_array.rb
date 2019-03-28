# Methods

# Write a method called 'in_array' which will take 
# two parameteres:
# One as a string and one as an array of strings

# Return a boolean indicationg whether or not the
# string is found in the array.

# Test your solution with:
# ruby tests/05_in_array_test.rb

# Example:
# "hello", ["hi","howdy","hello"] should return true.

def in_array (needle, haystack)
  found_string = haystack.map{|item| item == needle ? 1 : nil}.compact
  #puts "#{found_string}"
  if (found_string.length > 0)
    return true
  else
    return false
  end
  #input.map {|item| item > 0 ? item : nil}.compact
end

found_string_value = in_array("VVB", ["hi","howdy","hello"])
puts "#{found_string_value}"


# Beast Mode:

# Redo the challenge but try solving it again in a different way.