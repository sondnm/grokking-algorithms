import unittest
from .recursive_max import recursive_max

class TestRecursiveMax(unittest.TestCase):
    def Setup(self):
        pass

    def test_recursive_count_returns_nothing_when_array_is_empty(self):
        self.assertEqual(recursive_max([]), None)

    def test_recursive_count_returns_the_single_number_when_array_has_one_item(self):
        self.assertEqual(recursive_max([2]), 2)

    def test_recursive_count_returns_the_maximum_number(self):
        self.assertEqual(recursive_max([5, 1, 3, 10, 9]), 10)
