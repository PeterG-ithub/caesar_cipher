def stock_picker(number)
    diffArr = []
    for i in 0..number.length-1 do
        diffArr.push(number[i..-1].map { |num| num - number[i]})
    end

    maxRowIndex = diffArr.map { |array| array.max }.each_with_index.max[1]
    maxColumnIndex = diffArr[maxRowIndex].each_with_index.max[1]

    array = [maxRowIndex, maxRowIndex+maxColumnIndex]
end


stock_picker([17,3,2,6,9,15,8,6,1,10])