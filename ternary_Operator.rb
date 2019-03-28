def my_age(myAge)
myAge = myAge.to_i
result = (myAge >= 18 ? "t" : "f");
if result == "t"
    puts "You are allowed to vote \n"
else
    puts "Sorry! You are not allowed to vote"
end
end

my_age("18")