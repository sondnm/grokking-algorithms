import unittest
from .dijkstra import search

class TestDijkstra(unittest.TestCase):
    def setUp(self):
        pass

    def test_search_finds_the_shortest_path_for_example_graph(self):
        graph = {
            'start': {
                'a': 6,
                'b': 2
            },
            'a': {
                'fin': 1
            },
            'b': {
                'a': 3,
                'fin': 5
            },
            'fin': {}
        }
        costs = {
            'a': 6,
            'b': 2,
            'fin': float('inf')
        }
        parents = {
            'a': 'start',
            'b': 'start',
            'fin': None
        }
        search(graph, costs, parents)
        self.assertEqual(parents, {'a': 'b', 'b': 'start', 'fin': 'a'})
        self.assertEqual(costs, {'a': 5, 'b': 2, 'fin': 6})

    def test_search_finds_the_shortest_path_for_a_exercise_graph(self):
        graph = {
            'start': {
                'a': 5,
                'b': 2
            },
            'a': {
                'c': 4,
                'd': 2
            },
            'b': {
                'a': 8,
                'd': 7
            },
            'c': {
                'd': 6,
                'fin': 3
            },
            'd': {
                'fin': 1
            },
            'fin': {}
        }
        costs = {
            'a': 5,
            'b': 2,
            'c': float('inf'),
            'd': float('inf'),
            'fin': float('inf')
        }
        parents = {
            'a': 'start',
            'b': 'start',
            'c': None,
            'd': None,
            'fin': None
        }
        search(graph, costs, parents)
        self.assertEqual(parents, {'a': 'start', 'b': 'start', 'c': 'a', 'd': 'a', 'fin': 'd'})
        self.assertEqual(costs, {'a': 5, 'b': 2, 'c': 9, 'd': 7, 'fin': 8})

    def test_search_finds_the_shortest_path_for_b_exercise_graph(self):
        graph = {
            'start': {
                'a': 10,
            },
            'a': {
                'b': 20,
            },
            'b': {
                'c': 1,
                'fin': 30
            },
            'c': {
                'a': 1,
            },
            'fin': {}
        }
        costs = {
            'a': 10,
            'b': float('inf'),
            'c': float('inf'),
            'fin': float('inf')
        }
        parents = {
            'a': 'start',
            'b': None,
            'c': None,
            'fin': None
        }
        search(graph, costs, parents)
        self.assertEqual(parents, {'a': 'start', 'b': 'a', 'c': 'b', 'fin': 'b'})
        self.assertEqual(costs, {'a': 10, 'b': 30, 'c': 31, 'fin': 60})
