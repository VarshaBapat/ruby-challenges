while i <= purchasedBooksArray.max do
    for i in 0..arrayLengthP
        if (purchasedBooksArray[i] == 0)
            i+= 1
        else
            minValue = purchasedBooksArray.min
            duplicateValuesCount = purchasedBooksArray.count(minValue)  
            if (minValue == 0 && duplicateValuesCount == purchasedBooksArray.length)
                puts "You have not purchased any books. Sorry there is no discount\n"
                return
            end  
            puts "After Return statement\n"
            #flag = purchasedBooksArray.length - duplicateValuesCount 
            purchasedBooksArray[i] = purchasedBooksArray.at(i) - minValue
            puts "MinValue is #{minValue}\n"
            flag+= 1
            puts "Flag value is #{flag}\n"
            i+= 1
        end
    end 
    discountSetArray[i] = flag
    i+= 1
    for i in 0..arrayLength
        valueAtPosition = discountSetArray.at(i)
        puts "#{valueAtPosition} \n"
        i+= 1
    end
    i-= minValue
end
