# frozen_string_literal: true

def breadth_first_search(graph, start, finish)
  search_queue = graph[start].dup
  searched = {}

  loop do
    break if search_queue.empty?
    node = search_queue.shift
    next if searched[node]

    return [true, node] if node == finish
    search_queue += graph[node]
    searched[node] = true
  end
  return [false, nil]
end
