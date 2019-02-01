import unittest
from .recursive_sum import recursive_sum

class TestRecursiveSum(unittest.TestCase):
    def setUp(self):
        pass

    def test_recursive_sum_returns_a_number(self):
        arr = [1, 2, 3, 4]
        self.assertIsInstance(recursive_sum(arr), int)

    def test_recursive_sum_returns_sum_of_all_items(self):
        arr = [1, 2, 3, 4]
        self.assertEqual(recursive_sum(arr), 10)

    def test_recursive_sum_returns_zero_if_list_is_empty(self):
        self.assertEqual(recursive_sum([]), 0)
