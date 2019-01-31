# frozen_string_literal: true

require 'minitest/autorun'
require_relative './hash_function'

class HashFunctionTest < Minitest::Test
  def test_hash_function_returns_an_integer
    assert_instance_of Integer, hash_function("string")
  end

  def test_hash_function_returns_a_result_less_than_hash_size
    assert_operator hash_function("string"), :<, HASH_SIZE
  end

  def test_hash_function_returns_calculated_result
    assert_equal 2, hash_function("string")
  end
end
