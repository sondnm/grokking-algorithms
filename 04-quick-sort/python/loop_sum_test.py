import unittest
from .loop_sum import loop_sum

class TestLoopSum(unittest.TestCase):
    def Setup(self):
        pass

    def test_loop_sum_returns_a_number(self):
        arr = [1, 2, 3, 4]
        self.assertIsInstance(loop_sum(arr), int)

    def test_loop_sum_returns_sum_of_all_items(self):
        arr = [1, 2, 3, 4]
        self.assertEqual(loop_sum(arr), 10)

    def test_loop_sum_returns_zero_if_list_is_empty(self):
        self.assertEqual(loop_sum([]), 0)
