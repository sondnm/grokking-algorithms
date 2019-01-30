# frozen_string_literal: true

require 'minitest/autorun'
require_relative './recursive_binary_search'

class RecursiveBinarySearchTest < Minitest::Test
  def test_recursive_binary_search_returns_an_integer
    list = [1, 3, 5, 7, 9]
    assert_instance_of Integer, recursive_binary_search(list, 0, list.size - 1, 1)
  end

  def test_recursive_binary_search_existed_item_returns_correct_position
    list = [1, 3, 5, 7, 9]
    assert_equal recursive_binary_search(list, 0, list.size - 1, 3), 1
    assert_equal recursive_binary_search(list, 0, list.size - 1, list.first), 0
    assert_equal recursive_binary_search(list, 0, list.size - 1, list.last), list.size - 1
  end

  def test_recursive_binary_search_non_existed_item_does_not_return_anything
    list = [1, 3, 5, 7, 9]
    assert_nil recursive_binary_search(list, 0, list.size - 1, -1)
  end
end
