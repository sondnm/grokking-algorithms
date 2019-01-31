# frozen_string_literal: true

def recursive_max(arr)
  case arr.size
  when 0
    nil
  when 1
    arr[0]
  else
    sub_max = recursive_max(arr[1..-1])
    sub_max > arr[0] ? sub_max : arr[0]
  end
end
