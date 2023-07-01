def bubble_sort(number)
    (number.length-1).times do
        for i in 0..number.length-2 do
            temp = number[i]
            if temp > number[i+1]
                number[i] = number[i+1]
                number[i+1] = temp
            end
        end 
    end
    number
end


p bubble_sort([4,3,78,2,0,2])

