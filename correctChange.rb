def correctChange(cashAmount,itemPrice)
    cashAmount = cashAmount.to_f
    itemPrice = itemPrice.to_f
    correctChange = cashAmount - itemPrice
    if (cashAmount >= itemPrice)
        puts "Here is your change amount #{correctChange}\n"
    else 
        correctChange = itemPrice - cashAmount
        puts "The amount given is less than the item price !\n 
        You still need to pay an amount of #{correctChange}"
    end
end

correctChange(50,100)
