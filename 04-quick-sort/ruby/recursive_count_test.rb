# frozen_string_literal: true

require 'minitest/autorun'
require_relative './recursive_count'

class RecursiveCountTest < Minitest::Test
  def test_recursive_count_returns_an_integer
    arr = [1, 2, 3, 4]
    assert_instance_of Integer, recursive_count(arr)
  end

  def test_recursive_count_returns_array_length
    arr = [1, 2, 3, 4]
    assert_equal 4, recursive_count(arr)
  end

  def test_recursive_count_returns_zero_if_list_is_empty
    assert_equal 0, recursive_count([])
  end
end
