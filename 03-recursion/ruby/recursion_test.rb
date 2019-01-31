# frozen_string_literal: true

require 'minitest/autorun'
require_relative './recursion'

class RecursionTest < Minitest::Test
  def test_factorial_returns_an_integer
    assert_instance_of Integer, factorial(3)
  end

  def test_factorial_returns_base_case
    assert_equal 1, factorial(1)
  end

  def test_factorial_returns_correct_result
    assert_equal 120, factorial(5)
  end
end
