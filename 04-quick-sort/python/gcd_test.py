import unittest
from .gcd import gcd

class TestGcd(unittest.TestCase):
    def setUp(self):
        pass

    def test_gcd_returns_a_number(self):
        self.assertIsInstance(gcd(10, 4), int)

    def test_gcd_returns_greatest_common_divisor(self):
        self.assertEqual(gcd(10, 4), 2)

    def test_gcd_returns_non_zero_integer_when_an_argument_is_zero(self):
        self.assertEqual(gcd(10, 0), 10)

    def test_gcd_returns_same_result_when_arguments_are_swapped(self):
        self.assertEqual(gcd(10, 4), gcd(4, 10))
