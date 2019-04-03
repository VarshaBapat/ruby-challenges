# nthFibonacci

# A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each
# subsequent number is the sum of the previous two.

# For example, the first seven Fibonacci numbers are: 0 1 1 2 3 5 8

# Write a method that will return the nth number of the sequence.

# The syntax is easy, getting your head around the algorithm is the challenge.
# Write the sequence on a piece of paper first and think about the steps
# you take for each number. Translate this to pseudocode and then to ruby.

# Difficulty:
# 6/10

# Example:
# nthFibonacci(0) -> 0
# nthFibonacci(3) -> 2
# nthFibonacci(6) -> 8

# Check your solution by running the tests:
# ruby tests/13_fibonacci_test.rb

def nthFibonacci (n)
  num = n.to_i
  fibonacci_sequence = Array.new
  case num
  when 0 
    fibonacci_sequence << 0
  when 1
    fibonacci_sequence << [0,1]
  else
    fibonacci_sequence[0] = 0
    fibonacci_sequence[1] = 1
    i = 1
    while i < num
      i+= 1
      fibonacci_sequence[i] =  fibonacci_sequence[i-1] + fibonacci_sequence[i-2]    
    end
  end
  return fibonacci_sequence
end

fibonacci_sequence = Array.new
fibonacci_sequence = nthFibonacci(5)
puts fibonacci_sequence

#fibonacci_sequence = [0,1,1,2,3,5,8,13,21,34,55]