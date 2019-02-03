# frozen_string_literal true

require 'minitest/autorun'
require_relative './seller_search'

class SellerSearchTest < Minitest::Test
  def setup
    @graph = {
      'you' => ['alice', 'bob', 'claire'],
      'bob' => ['anuj', 'peggy'],
      'alice' => ['peggy'],
      'claire' => ['thom', 'jonny'],
      'anuj' => [],
      'peggy' => [],
      'thom' => [],
      'jonny' => [],
    }
  end

  def test_seller_search_returns_an_array
    assert_instance_of(Array, seller_search(@graph, 'you'))
  end

  def test_seller_search_returns_correct_seller
    assert_equal([true, 'thom'], seller_search(@graph, 'you'))
  end

  def test_seller_search_returns_nothing_when_started_nodes_network_does_not_have_seller
    assert_equal([false, nil], seller_search(@graph, 'anuj'))
  end
end
