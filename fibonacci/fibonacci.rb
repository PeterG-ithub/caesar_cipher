def fibs(number)
  array = [0, 1]
  idx = 0
  until array.count == number
    array.push(array[idx] + array[idx+1])
    idx += 1
  end
  array
end

#p fibs(8)
def fibs_rec(number)
  if number == 1
    [0]
  elsif number == 2
    [0, 1]
  else
    [*fibs_rec(number - 1), fibs_rec(number - 1)[-1] + fibs_rec(number - 2)[-1]]
  end
end

p fibs_rec(3)

p fibs_rec(6)
