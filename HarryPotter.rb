#this new array will store the number of each kind of books purchased by the customer.
purchasedBooksArray = Array.new
discountSetArray = Array.new
minValueArray = Array.new

originalBookArray = ["B1","B2","B3","B4","B5"]
arrayLength = originalBookArray.length - 1
#arrayLengthP = purchasedBooksArray.length - 1
totalNumberOfBooks = 0
totalPrice = 0
finalPrice = 0
totalDiscount = 0
countValue = 0
minValue = 0
flag = 0


#populate the new array by taking in user inputs in terms of number for every kind of book purchased
for i in 0..arrayLength
    puts "Please enter the number of #{originalBookArray.at(i)} books purchased\n" 
    purchasedBooksArray[i] = gets.to_i ;
    i+= 1
end

#Total price of all books purchased before discount 
for i in 0..arrayLength
    totalNumberOfBooks = purchasedBooksArray[i] + totalNumberOfBooks
    totalPrice = totalNumberOfBooks * 8
    i+= 1
end
puts "The total price of all books before discount is #{totalPrice}"
puts "The maximum value of the array is : #{purchasedBooksArray.max}\n"

def func(purchasedBooksArray)
    tempArray = Array.new
    arrayLengthP = purchasedBooksArray.length - 1
    minValue = purchasedBooksArray.min
    duplicateValuesCount = purchasedBooksArray.count(minValue)
    flag = 0
    if (minValue == 0 && duplicateValuesCount == purchasedBooksArray.length)
        puts "You have not purchased any books. Sorry there is no discount\n"
        return
    end
    for i in 0..arrayLengthP
        if (purchasedBooksArray.at(i) != 0)
            tempArray[i] = purchasedBooksArray[i]
            i+= 1
            flag+= 1
        end 
    end
    tempArray = tempArray.compact
    tempArrayMinValue = tempArray.min
    for i in 0..arrayLengthP
        if (purchasedBooksArray.at(i) != 0)
            purchasedBooksArray[i] = purchasedBooksArray.at(i) - tempArrayMinValue
        end
        puts "Value populated this time was:#{purchasedBooksArray.at(i)}\n"
    end

    #l = tempArray.length
    #puts "This is temparray : \n"
    #for i in 0..l
    #    valueAtPosition = tempArray.at(i)
    #    puts "#{valueAtPosition} \n"
    #    i+= 1
    #end
    #puts "The min value of tempArray is : #{tempArray.min}\n"
end

def calculateDiscount(flag,tempArrayMinValue)
    flagArray = Array.new(originalBookArray.length)
       
                #twentyFivePercent(flag)
                discount = 10 * flag
    
                #twentyPercent(flag)
                discount = 6.4 * flag
    
                #tenPercent(flag)
                discount = 2.4 * flag
    
                #fivePercent(flag)
                discount = 0.8 * flag
end
 


func(purchasedBooksArray)


#This is the total price after discount
=begin 
totalDiscount = twentyFivePercentDiscount + twentyPercentDiscount + tenPercentDiscount + fivePercentDiscount
finalPrice = totalPrice - totalDiscount
puts "You have a discount of "
=end

=begin
def calculateDiscount(discountSetArray,minValueArray)
lengthD = discountSetArray.length -1
lengthM = minValueArray.length -1
    for i in 0..lengthD
        for i in 0..lengthM
            #twentyFivePercent(flag)
            discount = 10 * flag

            #twentyPercent(flag)
            discount = 6.4 * flag

            #tenPercent(flag)
            discount = 2.4 * flag

            #fivePercent(flag)
            discount = 0.8 * flag
        end
    end
end
=end


#The below piece of code can be used to check if the user has input the correct value for each
#of the purchased books
=begin
for i in 0..arrayLength
    valueAtPosition = purchasedBooksArray.at(i)
    puts "#{valueAtPosition} \n"
    i+= 1
end
=end

