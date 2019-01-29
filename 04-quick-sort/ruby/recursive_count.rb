# frozen_string_literal: true

def recursive_count(arr)
  if arr.empty?
    0
  else
    recursive_count(arr[1..-1]) + 1
  end
end
