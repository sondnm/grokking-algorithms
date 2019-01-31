# frozen_string_literal: true

require 'minitest/autorun'
require_relative './gcd'

class GcdTest < Minitest::Test
  def test_gcd_returns_an_integer
    assert_instance_of Integer, gcd(10, 4)
  end

  def test_gcd_returns_greatest_common_divisor
    assert_equal 2, gcd(10, 4)
  end

  def test_gcd_returns_non_zero_integer_when_an_argument_is_zero
    assert_equal 10, gcd(10, 0)
  end

  def test_gcd_returns_same_result_when_arguments_are_swapped
    assert_equal gcd(10, 4), gcd(4, 10)
  end
end
