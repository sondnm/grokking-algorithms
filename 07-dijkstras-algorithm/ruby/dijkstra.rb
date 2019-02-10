# frozen_string_literal: true

def search(graph, costs, parents)
  processed = {}
  loop do
    node = find_lowest_cost_node(costs, processed)
    break unless node
    cost = costs[node]
    neighbors = graph[node]
    neighbors.keys.each do |n|
      new_cost = cost + neighbors[n]
      if costs[n] > new_cost
        costs[n] = new_cost
        parents[n] = node
      end
    end
    processed[node] = true
  end
end

def find_lowest_cost_node(costs, processed)
  lowest_cost = Float::INFINITY
  lowest_cost_node = nil
  costs.each do |node, cost|
    if cost < lowest_cost && !processed[node]
      lowest_cost = cost
      lowest_cost_node = node
    end
  end
  lowest_cost_node
end
