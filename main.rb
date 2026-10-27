


print "Enter a number with no repeated digits: "

user_string = gets.chomp

#https://stackoverflow.com/questions/24980295/strictly-convert-string-to-integer-or-nil
user_string_as_number = Integer(user_string)


iter = user_string.length-1
pivot = -1


while iter >= 0

    right_char = Integer(user_string[iter])
    left_char = Integer(user_string[iter - 1])

    if left_char != nil && right_char != nil && left_char < right_char
        pivot = iter-1
        break
    end
    
    iter -= 1
end


if pivot == -1 then 
    puts "Greatest possible permutation is the string"
end

#okay now we have to find the smallest digit to the right of the pivot that is larger than the pivot itself

smallest_candidate = user_string.length-1

while user_string[smallest_candidate] <= user_string[pivot] do 
        smallest_candidate -= 1 
    end


#puts String(user_string[smallest_candidate])

#okay now we have to swap the smallest candidate and the pivot

temp = user_string[pivot]
user_string[pivot] = user_string[smallest_candidate]
user_string[smallest_candidate] = temp


#puts "after swap"

#puts user_string
#okay now we need to swap everything left of the pivot
#using rubys reverse! macro and good functional paradgim

#https://stackoverflow.com/questions/3057967/reverse-a-string-in-ruby
#https://stackoverflow.com/questions/15023651/splitting-slicing-array-in-ruby

suffix = user_string[(pivot+1)..]
user_string[(pivot+1)..] = suffix.reverse!


puts user_string


