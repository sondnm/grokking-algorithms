# frozen_string_literal: true

def recursive_sum(arr)
  if arr.empty?
    0
  else
    arr.shift + recursive_sum(arr)
  end
end
