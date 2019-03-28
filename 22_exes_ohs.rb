# Exes and Ohs
# Difficulty: medium/hard

# This is a great question for interview prep, so lets not google it. 
# Instead, try whiteboarding, and thinking of your approach before coding. There are multiple approaches to this question, so try to think of the most efficient one you can!

# Write a method that will take a string as an input. 
# The method will check this string, and count the amount 
# of 'x's and 'o's. It should return true if the amount of 'x's 
# and 'o's are the same, and should return false if they are different. 
# It should also be case insensitive, and work with any set of two 
# characters (for example, the string could contain "oooxxx" or
# "eeefff" - both of these would return true because there are
# two distinct characters and an equal number of each in both
# examples).

# Example input: "ooxx"
# Expected output: true

# Example input: "oOxXxoX"
# Expected output: false

# Example input: "ooXx"
# Expected output: true

# Example input: "rtrt"
# Expected output: true

# Example input: "RtrT"
# Expected output: true

# Example input: "efefy"
# Expected output: false

=begin
def exes_and_ohs(array)
    # Your code goes here
    unique = array.uniq
    if unique.length == 2

        if array.count(unique[0]) == array.count(unique[1])
            return true
        end
    end
    return false
end


puts exes_and_ohs ['X', 'o', 'O', 'x', 'o']
=end

#Changes by Varsha
def exes_and_ohs(input_string)
    unique_array = input_string.downcase.split('').uniq
    input_array = input_string.downcase.split('')
    if (unique_array.length == 2)
            count_1 = input_array.count(unique_array[0])
            count_2 = input_array.count(unique_array[1])
            if count_1 == count_2
                return true
            else
                return false
            end
    else 
        return false
    end
end

puts exes_and_ohs("XOOOOOOOOOOOosdhbvefefjkdfhsdg")
 



