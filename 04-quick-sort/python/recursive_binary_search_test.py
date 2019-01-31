import unittest
from .recursive_binary_search import recursive_binary_search

class TestRecursiveBinarySearch(unittest.TestCase):
    def Setup(self):
        pass

    def test_recursive_binary_search_returns_a_number(self):
        arr = [1, 2, 3, 4]
        self.assertIsInstance(recursive_binary_search(arr, 0, len(arr) - 1, 1), int)

    def test_recursive_binary_search_existed_item_returns_correct_position(self):
        arr = [1, 3, 5, 7, 9]
        self.assertEqual(recursive_binary_search(arr, 0, len(arr) - 1, 3), 1)
        self.assertEqual(recursive_binary_search(arr, 0, len(arr) - 1, arr[0]), 0)
        self.assertEqual(recursive_binary_search(arr, 0, len(arr) - 1, arr[-1]), len(arr) - 1)

    def test_recursive_binary_search_non_existed_item_does_not_return_anything(self):
        arr = [1, 3, 5, 7, 9]
        self.assertEqual(recursive_binary_search(arr, 0, len(arr) - 1, -1), None)
