import unittest
from .quick_sort import quick_sort

class TestQuickSort(unittest.TestCase):
    def setUp(self):
        pass

    def test_quick_sort_returns_a_list(self):
        lst = [33, 10, 15, 7, 20, 19]
        self.assertIsInstance(quick_sort(lst), list)

    def test_quick_sort_returns_the_given_list_when_it_has_no_items(self):
        lst = []
        self.assertEqual(quick_sort(lst), lst)

    def test_quick_sort_returns_the_given_list_when_it_has_1_item(self):
        lst = [10]
        self.assertEqual(quick_sort(lst), lst)

    def test_quick_sort_returns_the_sorted_list(self):
        lst = [33, 10, 15, 7, 20, 19]
        self.assertEqual(quick_sort(lst), [7, 10, 15, 19, 20, 33])
