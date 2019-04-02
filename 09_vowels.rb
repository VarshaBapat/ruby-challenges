# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

def vowels(input_string)
result_array = Array.new
input_array = input_string.downcase.split('')
result_array = input_array.keep_if { |v| v =~ /[aeiou]/ } 
return result_array
#result = {}
#vowels_array = ["a","e","i","o","u"]
#count_vowels_array = Array.new
#vowels_array.each_index {|i| count_vowels_array[i] = input_array.count(vowels_array[i])}
#count_array_length = count_vowels_array.length
#i = 0
#while i < count_array_length do
#  result.store(vowels_array[i],count_vowels_array[i])
#  i+= 1
#end
#return result
end
#result_array = Array.new
#result_array = vowels("aeiooudfghaeiouoooooooooo")
#puts result_array

#[a e i o u] [1,2,3,4,5]

#a.keep_if { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]
#my_hash.each { |key, value| puts "k: #{key}, v: #{value}" }

