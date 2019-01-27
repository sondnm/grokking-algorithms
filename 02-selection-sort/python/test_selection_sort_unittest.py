import unittest
from selection_sort import selection_sort

class TestSelectionSort(unittest.TestCase):
    def Setup(self):
        pass

    def test_selection_sort_returns_an_array(self):
        arr = [5, 3, 6, 2, 10]
        self.assertIsInstance(selection_sort(arr), list)

    def test_selection_sort_returns_sorted_order(self):
        arr = [5, 3, 6, 2, 10]
        self.assertEqual(selection_sort(arr), [2, 3, 5, 6, 10])

if __name__ == '__main__':
    unittest.main()
