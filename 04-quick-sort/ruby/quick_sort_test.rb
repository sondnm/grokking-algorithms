# frozen_string_literal: true

require 'minitest/autorun'
require_relative './quick_sort'

class QuickSortTest < Minitest::Test
  def test_quick_sort_returns_an_array
    arr = [33, 10, 15, 7, 20, 19]
    assert_instance_of Array, quick_sort(arr)
  end

  def test_quick_sort_returns_the_given_array_when_it_has_no_items
    arr = []
    assert_equal quick_sort(arr), arr
  end

  def test_quick_sort_returns_the_given_array_when_it_has_1_item
    arr = [10]
    assert_equal quick_sort(arr), arr
  end

  def test_quick_sort_returns_the_sorted_array
    arr = [33, 10, 15, 7, 20, 19]
    assert_equal quick_sort(arr), [7, 10, 15, 19, 20, 33]
  end
end
