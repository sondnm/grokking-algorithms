from collections import deque

def person_is_seller(person):
    return person[-1] == 'm'

def seller_search(graph, name):
    """Implementation of breadth-first search to find a mango seller from a certain node"""
    search_queue = deque(graph[name])
    searched = {}

    while search_queue:
        person = search_queue.popleft()
        if not searched.get(person):
            if person_is_seller(person):
                return (True, person)
            else:
                search_queue += graph[person]
                searched[person] = True
    return (False, None)
