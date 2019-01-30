# frozen_string_literal: true

def recursive_binary_search(arr, low, high, item)
  return nil if high < 1

  mid = (low + high) / 2

  if arr[mid] == item
    mid
  elsif arr[mid] > item
    recursive_binary_search(arr, low, mid - 1, item)
  else
    recursive_binary_search(arr, mid + 1, high, item)
  end
end
