import unittest
from .seller_search import seller_search

class TestSellerSearch(unittest.TestCase):
    def setUp(self):
        self.graph = {
            'you': ['alice', 'bob', 'claire'],
            'bob': ['anuj', 'peggy'],
            'alice': ['peggy'],
            'claire': ['thom', 'jonny'],
            'anuj': [],
            'peggy': [],
            'thom': [],
            'jonny': [],
        }

    def test_seller_search_returns_a_tuple(self):
        self.assertIsInstance(seller_search(self.graph, 'you'), tuple)

    def test_seller_search_returns_correct_seller(self):
        self.assertEqual(seller_search(self.graph, 'you'), (True, 'thom'))

    def test_seller_search_returns_nothing_when_started_nodes_network_does_not_have_seller(self):
        self.assertEqual(seller_search(self.graph, 'anuj'), (False, None))
