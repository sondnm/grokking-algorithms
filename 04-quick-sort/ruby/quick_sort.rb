# frozen_string_literal: true

def quick_sort(arr)
  return arr if arr.size < 2
  pivot_index = rand(arr.size - 1)
  pivot = arr[pivot_index]

  less = []
  greater = []
  arr.size.times do |i|
    next if i == pivot_index
    if arr[i] <= pivot
      less << arr[i]
    else
      greater << arr[i]
    end
  end
  quick_sort(less) + [pivot] + quick_sort(greater)
end
