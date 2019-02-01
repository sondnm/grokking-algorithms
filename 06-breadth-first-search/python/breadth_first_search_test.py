import unittest
from .breadth_first_search import breadth_first_search

class TestBreadthFirstSearch(unittest.TestCase):
    def setUp(self):
        self.graph = {
            'start': ['finish'],
            'finish': []
        }
        self.start_to_finish = {
            'S': ['N1', 'N2'],
            'N1': ['N3', 'F'],
            'N2': ['N3', 'N4'],
            'N3': [],
            'N4': ['F'],
            'F': [],
        }
        self.cab_to_bat = {
            'cab': ['cat', 'cat'],
            'cat': ['bat', 'mat'],
            'car': ['bar', 'cat'],
            'mat': ['bat'],
            'bar': ['bat'],
            'bat': [],
        }

    def test_breadth_first_search_returns_a_tuple(self):
        self.assertIsInstance(breadth_first_search(self.graph, 'start', 'finish'), tuple)

    def test_breadth_first_search_start_to_finish_returns_correct_result(self):
        self.assertEqual(breadth_first_search(self.start_to_finish, 'S', 'F'), (True, 'F'))

    def test_breadth_first_search_cab_to_bat_returns_correct_result(self):
        self.assertEqual(breadth_first_search(self.cab_to_bat, 'cab', 'bat'), (True, 'bat'))

    def test_seller_search_returns_nothing_when_started_nodes_network_does_not_have_child_node(self):
        self.assertEqual(breadth_first_search(self.graph, 'finish', 'finish'), (False, None))
