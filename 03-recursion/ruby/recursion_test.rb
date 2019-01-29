# frozen_string_literal: true

require 'minitest/autorun'
require_relative './recursion'

class RecursionTest < Minitest::Test
  def test_factorial_returns_an_integer
    assert_instance_of Integer, factorial(3)
  end

  def test_factorial_returns_base_case
    assert_equal factorial(1), 1
  end

  def test_factorial_returns_correct_result
    assert_equal factorial(5), 120
  end
end
