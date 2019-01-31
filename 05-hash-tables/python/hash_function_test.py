import unittest
from .hash_function import hash_function, HASH_SIZE

class TestHashFunction(unittest.TestCase):
    def Setup(self):
        pass

    def test_hash_function_returns_a_number(self):
        self.assertIsInstance(hash_function('string'), int)

    def test_hash_function_returns_a_result_less_than_hash_size(self):
        self.assertLess(hash_function('string'), HASH_SIZE)

    def test_hash_function_returns_calculated_result(self):
        self.assertEqual(hash_function('string'), 2)
