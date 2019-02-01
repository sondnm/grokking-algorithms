import unittest
from .recursive_count import recursive_count

class TestRecursiveCount(unittest.TestCase):
    def setUp(self):
        pass

    def test_recursive_count_returns_a_number(self):
        arr = [1, 2, 3, 4]
        self.assertIsInstance(recursive_count(arr), int)

    def test_recursive_count_returns_array_length(self):
        arr = [1, 2, 3, 4]
        self.assertEqual(recursive_count(arr), 4)

    def test_recursive_count_returns_zero_if_list_is_empty(self):
        self.assertEqual(recursive_count([]), 0)
