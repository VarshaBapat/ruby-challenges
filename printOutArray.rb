arr = [1, 2, 3, 4, 5, 6, 7]
arrayLength = arr.length
for i in 0..arrayLength
    valueAtPosition = arr.at(i)
    puts "#{valueAtPosition} \n"
    i+= 1
end