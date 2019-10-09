from django.test import TestCase

# Create your tests here.
class SampleTest(TestCase):

    def test_alway_pass(self):
        self.assertEqual(1, 1)
    
     def test_alway_fail(self):
         self.assertEqual(2, 1)