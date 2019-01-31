import unittest
from .recursion import factorial

class TestRecursion(unittest.TestCase):
    def Setup(self):
        pass

    def test_factorial_returns_a_number(self):
        self.assertIsInstance(factorial(3), int)

    def test_factorial_returns_base_case(self):
        self.assertEqual(factorial(1), 1)

    def test_factorial_returns_correct_result(self):
        self.assertEqual(factorial(5), 120)
