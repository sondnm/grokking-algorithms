# frozen_string_literal: true

def recursive_max(arr)
  case arr.size
  when 0
    nil
  when 1
    arr[0]
  when 2
    arr[0] > arr[1] ? arr[0] : arr[1]
  else
    max = recursive_max(arr[1..-1])
    max > arr[0] ? max : arr[0]
  end
end
