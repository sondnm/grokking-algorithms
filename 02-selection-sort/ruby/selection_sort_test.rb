# frozen_string_literal: true

require 'minitest/autorun'
require_relative './selection_sort'

class SelectionSortTest < Minitest::Test
  def test_selection_sort_returns_an_array
    arr = [5, 3, 6, 2, 10]
    assert_instance_of Array, selection_sort(arr)
  end

  def test_selection_sort_returns_sorted_order
    arr = [5, 3, 6, 2, 10]
    assert_equal [2, 3, 5, 6, 10], selection_sort(arr)
  end
end
