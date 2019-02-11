import unittest
from .greedy_stations import greedy_stations

class TestGreedyStations(unittest.TestCase):
    def setUp(self):
        self.states_needed = set(['mt', 'wa', 'or', 'id', 'nv', 'ut', 'ca', 'az'])
        self.stations = {
            'kone': set(['id', 'nv', 'ut']),
            'ktwo': set(['wa', 'id', 'mt']),
            'kthree': set(['or', 'nv', 'ca']),
            'kfour': set(['nv', 'ut']),
            'kfive': set(['ca', 'az']),
        }

    def test_greedy_stations_returns_a_set(self):
        self.assertIsInstance(greedy_stations(self.stations, self.states_needed), set)

    def test_greedy_stations_returns_correct_stations(self):
        self.assertEqual(greedy_stations(self.stations, self.states_needed), set(['ktwo', 'kthree', 'kone', 'kfive']))
