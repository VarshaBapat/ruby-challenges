# [2,2,2,1,1]
# [1,1,1,1,1],[1,1,1]
# [2,2,2],[1,1]
# [1,1,1], [2,2], [1]
def get_longest_set_combination (input)
    combinations = []
    # Initial longest array of books
    longest = input.map {|item| item > 0 ? item : nil}.compact

    # puts "input is #{input} and initial longest is: #{longest}"
    # create a new array for all elements in longest > 1 (reduced by 1) , 
    #until we are left with arrays of 1
    while (array_not_all_ones?(longest)) do
        leftovers=[]
        longest.each_index do |i|
            if longest[i] > 1
                leftovers << longest[i] - 1
                longest[i] = 1
            end
        end
        puts "longest #{longest} and leftovers #{leftovers}"
        combinations << longest
        longest = leftovers    
    end
    combinations << longest
    puts "longest: #{longest} combinations: #{combinations}"
    return combinations
end

def array_not_all_ones?(arr) 
    return arr.reduce {|a,b| a+b} > arr.length
end

# Get the combinations with largest values in each array

def get_largest_Values_Combination (input)
    combinations = []
    # Arrary combinations with the largest values
    largest = input.map {|item| item > 0 ? item : nil}.compact
    largest = largest.sort{|x, y| x <=> y}
    #puts "Largest array is: #{largest}\n"
    array_with_ones = []
    
    while (largest.length > 0) do
        leftovers=[]
        arr_wo_one_ind = 0
        arrayWithOut1 = largest.map {|item| item > 1 ? item : nil}.compact
        largest.each_index do |i|     
            if largest[i] == 1
                array_with_ones << 1
            else
                if largest[i] > arrayWithOut1.min
                    leftovers << largest[i] - arrayWithOut1.min
                    arrayWithOut1[arr_wo_one_ind] = arrayWithOut1.min
                end
                arr_wo_one_ind += 1
            end
            
        end
        combinations << arrayWithOut1
        largest = leftovers    
    end
        combinations << array_with_ones
        puts "largest: #{largest} combinations: #{combinations}"
        return combinations
end

input = [1,2,3,4,5]
# Get the combination with longest sets
longest_combos = get_longest_set_combination(input)
largest_combos = get_largest_Values_Combination(input)




# Reduce to unique combinations
# Calculate value for each combination


