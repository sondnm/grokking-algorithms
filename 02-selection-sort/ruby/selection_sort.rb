# frozen_string_literal: true

def find_smallest_index(arr)
  smallest_index = 0
  smallest = arr[0]

  1.upto(arr.size - 1).each do |index|
    if arr[index] < smallest
      smallest = arr[index]
      smallest_index = index
    end
  end
  smallest_index
end

def selection_sort(arr)
  new_arr = []
  arr.size.times do
    smallest_index = find_smallest_index(arr)
    new_arr << arr.delete_at(smallest_index)
  end
  new_arr
end
