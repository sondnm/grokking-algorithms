# frozen_string_literal: true

require 'minitest/autorun'
require_relative './loop_sum'

class LoopSumTest < Minitest::Test
  def test_loop_sum_returns_an_integer
    arr = [1, 2, 3, 4]
    assert_instance_of Integer, loop_sum(arr)
  end

  def test_loop_sum_returns_sum_of_all_items
    arr = [1, 2, 3, 4]
    assert_equal 10, loop_sum(arr)
  end

  def test_loop_sum_returns_zero_if_list_is_empty
    assert_equal 0, loop_sum([])
  end
end
