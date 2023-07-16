# frozen_string_literal: true

# if n < 2 return?
# else
#   sort left half of elements
#   sort right half of elements
#   merge sorted halves

# First split the array in half
# Sort the left side
# Sort the right side
# Merge in sorting order

# Base case: if array cant be split, return

def merge_sort(arr)
  return arr if arr.size <= 1

  # split the array into half, store it in left, right  left, right = arr.each_slice((arr.size / 2.0).round).to_a
  left, right = arr.each_slice((arr.size/2.0).round).to_a
  # sort left and right of array
  left_sort = merge_sort(left)
  right_sort = merge_sort(right)

  # merge in sorting order
  array = []
  array.concat(merge(left_sort, right_sort))
end

def merge(left_arr, right_arr)
  sorted_arr = []
  arr_size = left_arr.size + right_arr.size
  until sorted_arr.size == arr_size
    if left_arr.nil? && right_arr.nil?
      sorted_arr
    elsif left_arr[0].nil?
      sorted_arr.concat(right_arr)
    elsif right_arr[0].nil?
      sorted_arr.concat(left_arr)
    elsif left_arr[0] < right_arr[0]
      sorted_arr.push(left_arr[0])
      left_arr.shift
    else
      sorted_arr.push(right_arr[0])
      right_arr.shift
    end
  end
  sorted_arr
end

p merge_sort([499, 606, 921, 20, 689, 12, 431, 975, 10])
