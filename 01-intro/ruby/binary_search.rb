# frozen_string_literal: true

def binary_search(list, item)
  low = 0
  high = list.size - 1

  loop do
    break if low > high

    mid = (high + low) / 2
    guess = list[mid]
    if guess == item
      return mid
    elsif guess < item
      low = mid + 1
    else
      high = mid - 1
    end
  end
end
