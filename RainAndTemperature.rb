puts "Is it raining? \n Please input your answer as Y or N \n"
rain = gets.chomp
if (rain == "Y")  
    rainB = true
elsif (rain == "N")
    rainB = false
else
    puts "Sorry! This is not the input expected !\n"
    puts "Is it raining \n ? Please input your answer as Y or N \n"
end
puts "What is the temperature?"
temp = gets.to_f
def wetAndCold(rainB,temp)
    if (rainB == true && temp <= 20)
        puts "Its cold and wet out there!! \n"
    elsif (rainB == true && temp > 20)
        puts "Its wet and warm \n"
    elsif (rainB == false && temp <= 20)
        puts "Its dry and cold \n"
    else 
        puts "Its neither wet not cold \n"
    end
end
wetAndCold(rainB,temp)
