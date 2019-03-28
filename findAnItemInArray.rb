arr = [2,4,6,8,10]
    puts "Please input the item"
    flag =0
    val = gets.to_i
    arrayLength = arr.length - 1
        for i in 0..arrayLength       
            if arr.at(i) == val
                foundPosition = i
                puts "Found the item at #{foundPosition} \n"
                flag = 1
            end
            i += 1
            if (i == arr.length && flag == 0)
            puts "Sorry, item not found in this array."
            end 
        end       



