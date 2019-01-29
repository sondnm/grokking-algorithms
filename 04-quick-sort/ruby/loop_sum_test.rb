# frozen_string_literal: true

require 'minitest/autorun'
require_relative './loop_sum'

class LoopSumTest < Minitest::Test
  def test_loop_sum_returns_a_number
    arr = [1, 2, 3, 4]
    assert_instance_of Integer, loop_sum(arr)
  end

  def test_loop_sum_returns_sum_of_all_items
    arr = [1, 2, 3, 4]
    assert_equal loop_sum(arr), 10
  end

  def test_loop_sum_returns_zero_if_list_is_empty
    assert_equal loop_sum([]), 0
  end
end
