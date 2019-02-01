from collections import deque

def breadth_first_search(graph, start, finish):
    """Implementation of breadth-first search algorithm"""
    search_queue = deque(graph[start])
    searched = {}

    while search_queue:
        node = search_queue.popleft()
        if not searched.get(node):
            if node == finish:
                return (True, node)
            else:
                search_queue += graph[node]
                searched[node] = True
    return (False, None)
