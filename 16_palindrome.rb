# Palindrome

# A palindrome is a string that is exactly the same forwards
# as it is backwards, like "mom" or "racecar".

# Add tests to the 16_palindrome_test.rb file, inside the test folder.
# The test will check your method takes a word as a string and return 
# a boolean indicating whether or not the word is a palindrome.

# If your having trouble writing tests, look over previous morning challenges.

# Once you have done this, try to write the method below and check
# your code by running your tests.

# Example:
# palindrome("hello") should return false
# palindrome("racecar") should return true

# Check your solution by running the tests:
# ruby tests/16_palindrome_test.rb

def palindrome (string)
    input_array = []
    input_array = string.strip.downcase.split("")
    puts input_array
    count_input_array = input_array.length
    puts count_input_array
    if (count_input_array.even?)
      puts "Inside if"
      
    else
      puts "inside else"
    end
end

palindrome("NOON")
