# frozen_string_literal: true

def person_is_seller?(person)
  person[-1] == 'm'
end

def seller_search(graph, name)
  search_queue = graph[name].dup
  searched = {}

  loop do
    break if search_queue.empty?
    person = search_queue.shift
    next if searched[person]

    return [true, person] if person_is_seller?(person)
    search_queue += graph[person]
    searched[person] = true
  end
  [false, nil]
end
