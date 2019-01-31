# frozen_string_literal: true

require 'minitest/autorun'
require_relative './binary_search'

class BinarySearchTest < Minitest::Test
  def test_binary_search_returns_an_integer
    list = [1, 3, 5, 7, 9]
    assert_instance_of Integer, binary_search(list, 1)
  end

  def test_binary_search_existed_item_returns_correct_position
    list = [1, 3, 5, 7, 9]
    assert_equal 1, binary_search(list, 3)
    assert_equal 0, binary_search(list, list.first)
    assert_equal list.size - 1, binary_search(list, list.last)
  end

  def test_binary_search_non_existed_item_does_not_return_anything
    list = [1, 3, 5, 7, 9]
    assert_nil binary_search(list, -1)
  end
end
