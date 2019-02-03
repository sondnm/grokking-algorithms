# frozen_string_literal: true

require 'minitest/autorun'
require_relative './breadth_first_search'

class BreadthFirstSearchTest < Minitest::Test
  def setup
    @graph = {
        'start' => ['finish'],
        'finish' => []
    }
    @start_to_finish = {
        'S' => ['N1', 'N2'],
        'N1' => ['N3', 'F'],
        'N2' => ['N3', 'N4'],
        'N3' => [],
        'N4' => ['F'],
        'F' => [],
    }
    @cab_to_bat = {
        'cab' => ['cat', 'cat'],
        'cat' => ['bat', 'mat'],
        'car' => ['bar', 'cat'],
        'mat' => ['bat'],
        'bar' => ['bat'],
        'bat' => [],
    }
  end

  def test_breadth_first_search_returns_an_array
    assert_instance_of(Array, breadth_first_search(@graph, 'start', 'finish'))
  end

  def test_breadth_first_search_start_to_finish_returns_correct_result
    assert_equal([true, 'F'], breadth_first_search(@start_to_finish, 'S', 'F'))
  end

  def test_breadth_first_search_cab_to_bat_returns_correct_result
    assert_equal([true, 'bat'], breadth_first_search(@cab_to_bat, 'cab', 'bat'))
  end

  def test_seller_search_returns_nothing_when_started_nodes_network_does_not_have_child_node
    assert_equal([false, nil], breadth_first_search(@graph, 'finish', 'finish'))
  end
end
