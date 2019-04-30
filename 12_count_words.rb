# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words


# Your code here
puts "Please give me a list of words or the sentence please :"
#sentence = gets.strip.chomp
#puts sentence
input_array = gets.strip.chomp.downcase.split(" ")
puts input_array
input_array_unique = input_array.uniq
puts input_array_unique
    def count_words(input_array,input_array_unique)
        output_hash = Hash.new(0)
        input_array_unique.each do |word|
        output_hash[word] = input_array.count(word)          
        end
        puts output_hash
    end
count_words(input_array,input_array_unique)

# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2