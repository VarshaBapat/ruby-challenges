# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb



# Your code here
def hackerman(input_string1,input_string2)
    input_array1 = input_string1.downcase.split(" ")
    input_array2 = input_string2.downcase.split(" ").uniq
    output_array = []
    output_array = input_array1.map {|word| (input_array2.include?(word) ? "HIDDEN" : word)}
    puts "#{output_array.join(" ")}"
end
puts "Enter the first input string:"
input_string1 = gets.strip
puts "Enter the second input string:"
input_string2 = gets.strip
hackerman(input_string1,input_string2)



# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.