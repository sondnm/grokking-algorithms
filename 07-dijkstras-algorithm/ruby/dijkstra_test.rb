# frozen_string_literal: true

require 'minitest/autorun'
require_relative './dijkstra'

class DijkstraTest < Minitest::Test
  def test_search_finds_the_shortest_path_for_example_graph
    graph = {
      'start' => {
        'a' => 6,
        'b' => 2
      },
      'a' => {
        'fin' => 1
      },
      'b' => {
        'a' => 3,
        'fin' => 5
      },
      'fin' => {}
    }
    costs = {
      'a' => 6,
      'b' => 2,
      'fin' => Float::INFINITY
    }
    parents = {
      'a' => 'start',
      'b' => 'start',
      'fin' => nil
    }
    search(graph, costs, parents)
    assert_equal({'a' => 'b', 'b' => 'start', 'fin' => 'a'}, parents)
    assert_equal({'a' => 5, 'b' => 2, 'fin' => 6}, costs)
  end

  def test_search_finds_the_shortest_path_for_a_exercise_graph
    graph = {
      'start' => {
        'a' => 5,
        'b' => 2
      },
      'a' => {
        'c' => 4,
        'd' => 2
      },
      'b' => {
        'a' => 8,
        'd' => 7
      },
      'c' => {
        'd' => 6,
        'fin' => 3
      },
      'd' => {
        'fin' => 1
      },
      'fin' => {}
    }
    costs = {
      'a' => 5,
      'b' => 2,
      'c' => Float::INFINITY,
      'd' => Float::INFINITY,
      'fin' => Float::INFINITY
    }
    parents = {
      'a' => 'start',
      'b' => 'start',
      'c' => nil,
      'd' => nil,
      'fin' => nil
    }
    search(graph, costs, parents)
    assert_equal({'a' => 'start', 'b' => 'start', 'c' => 'a', 'd' => 'a', 'fin' => 'd'}, parents)
    assert_equal({'a' => 5, 'b' => 2, 'c' => 9, 'd' => 7, 'fin' => 8}, costs)
  end

  def test_search_finds_the_shortest_path_for_b_exercise_graph
    graph = {
      'start' => {
        'a' => 10,
      },
      'a' => {
        'b' => 20,
      },
      'b' => {
        'c' => 1,
        'fin' => 30
      },
      'c' => {
        'a' => 1,
      },
      'fin' => {}
    }
    costs = {
      'a' => 10,
      'b' => Float::INFINITY,
      'c' => Float::INFINITY,
      'fin' => Float::INFINITY
    }
    parents = {
      'a' => 'start',
      'b' => nil,
      'c' => nil,
      'fin' => nil
    }
    search(graph, costs, parents)
    assert_equal({'a' => 'start', 'b' => 'a', 'c' => 'b', 'fin' => 'b'}, parents)
    assert_equal({'a' => 10, 'b' => 30, 'c' => 31, 'fin' => 60}, costs)
  end
end
