# frozen_string_literal: true

require 'minitest/autorun'
require_relative './recursive_max'

class RecursiveMaxTest < Minitest::Test
  def test_recursive_count_returns_nil_when_array_is_empty
    assert_nil recursive_max([])
  end

  def test_recursive_count_returns_the_single_number_when_array_has_one_item
    assert_equal 2, recursive_max([2])
  end

  def test_recursive_count_returns_the_maximum_number
    assert_equal 10, recursive_max([5, 1, 3, 10, 9])
  end
end
