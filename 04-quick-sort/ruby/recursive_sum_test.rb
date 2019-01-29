# frozen_string_literal: true

require 'minitest/autorun'
require_relative './recursive_sum'

class RecursiveSumTest < Minitest::Test
  def test_recursive_sum_returns_an_integer
    arr = [1, 2, 3, 4]
    assert_instance_of Integer, recursive_sum(arr)
  end

  def test_recursive_sum_returns_sum_of_all_items
    arr = [1, 2, 3, 4]
    assert_equal recursive_sum(arr), 10
  end

  def test_recursive_sum_returns_zero_if_list_is_empty
    assert_equal recursive_sum([]), 0
  end
end
