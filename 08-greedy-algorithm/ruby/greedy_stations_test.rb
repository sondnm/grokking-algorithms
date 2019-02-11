# frozen_string_literal: true

require 'minitest/autorun'
require 'set'
require_relative './greedy_stations'

class GreedyStationsTest < Minitest::Test
  def setup
    @states_needed = Set.new(%w[mt wa or id nv ut ca az])
    @stations = {
      'kone' => Set.new(%w[id nv ut]),
      'ktwo' => Set.new(%w[wa id mt]),
      'kthree' => Set.new(%w[or nv ca]),
      'kfour' => Set.new(%w[nv ut]),
      'kfive' => Set.new(%w[ca az]),
    }
  end

  def test_greedy_stations_returns_a_set
    assert_instance_of(Set, greedy_stations(@stations, @states_needed))
  end

  def test_greedy_stations_returns_correct_stations
    assert_equal(Set.new(%w[ktwo kthree kone kfive]), greedy_stations(@stations, @states_needed))
  end
end
