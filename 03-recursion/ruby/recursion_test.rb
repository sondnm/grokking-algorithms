# frozen_string_literal: true

require 'minitest/autorun'
require_relative './recursion'

class RecursionTest < Minitest::Test
  def test_factorial_returns_a_number
    assert_instance_of Integer, factorial(3)
  end

  def test_factorial_returns_base_case
    assert factorial(1) == 1
  end

  def test_factorial_returns_correct_result
    assert factorial(5) == 120
  end
end
