# frozen_string_literal: true

def greedy_stations(stations, states_needed)
  final_stations = Set.new
  loop do
    break if states_needed.empty?
    best_station = nil
    states_covered = Set.new
    stations.each do |station, states|
      covered = states_needed & states
      if covered.size > states_covered.size
        best_station = station
        states_covered = covered
      end
    end
    states_needed -= states_covered
    final_stations << best_station
  end
  final_stations
end
