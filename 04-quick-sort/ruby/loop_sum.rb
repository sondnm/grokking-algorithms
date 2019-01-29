# frozen_string_literal: true

def loop_sum(arr)
  sum = 0
  arr.size.times do |i|
    sum += arr[i]
  end
  sum
end
