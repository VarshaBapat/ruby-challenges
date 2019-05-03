# Combine Hashes

# Write a method which will take two different hashes and will
# return their combined value in a new hash.

# If the hash contains numbers, the numbers for matching keys should
# be added and the sum stored in the combined hash

# If the hash contains strings, the strings for matching keys should
# be concatenated and the result stored in the combined hash

# Example:
# hash1 = { a: 3, b: 5, c: 1}
# hash2 = { a: 5, b: 2, c: 14}
# combine_hashes => { a: 8, b: 7, c: 15 }

# Example: 
# hash1 = {a: "a", b:"b", c:"c"}
# hash2 = {a: "a", b:"b", c:"c"}
# combine_hashes => {a: "aa", b:"bb", c:"cc"}



# Test your solution with ruby tests/17_combine_hashes.rb

def combine_hashes(hash1, hash2)
  hash3 = Hash.new(0)
  a1 = hash1.values
  a2 = hash2.values
  a3 = []
  a1.each_index {|i| a3[i] = a1[i] + a2[i]}
  a3.each_index {|i| hash3[hash1.keys[i]] = a3[i]}
  return hash3
end

hash1 = { a: 3, b: 5, c: 1}
hash2 = { a: 5, b: 2, c: 14}
hash3 = { 1 => "c", 2 => "a", 3 => "t"}
hash4 = { 1 => "C", 2 => "A", 3 => "T"}
puts combine_hashes(hash1, hash2)
puts combine_hashes(hash3, hash4)