import unittest
from .binary_search import binary_search

class TestBinarySearch(unittest.TestCase):
    def setUp(self):
        pass

    def test_binary_search_returns_an_integer(self):
        sorted_list = [1, 3, 5, 7, 9]
        self.assertIsInstance(binary_search(sorted_list, 1), int)

    def test_binary_search_existed_item_returns_correct_position(self):
        sorted_list = [1, 3, 5, 7, 9]
        self.assertEqual(binary_search(sorted_list, 3), 1)
        self.assertEqual(binary_search(sorted_list, sorted_list[0]), 0)
        self.assertEqual(binary_search(sorted_list, sorted_list[-1]), len(sorted_list) - 1)

    def test_binary_search_non_existed_item_does_not_return_anything(self):
        sorted_list = [1, 3, 5, 7, 9]
        self.assertEqual(binary_search(sorted_list, -1), None)
