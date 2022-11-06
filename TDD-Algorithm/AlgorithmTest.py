import unittest
import AlgorithmEngine


class AlgorithmTest(unittest.TestCase):

    def test_send_even_number_to_AlgorithmEngine(self):
      #Arrange
      value = 10
      expectedResult = [10,5,16,8,4,2,1]

      #Act
      result = AlgorithmEngine.algorithm(value)

      #Assert
      self.assertEqual(result,expectedResult)

    def test_send_odd_number_to_AlgorithmEngine(self):
        #Arrange
        value = 15
        expectedResult = [15, 46, 23, 70, 35, 106, 53, 160,
             80, 40, 20, 10, 5, 16, 8, 4, 2, 11]
        
        #Act
        result = AlgorithmEngine.algorithm(value)

        #Assert
        self.assertEqual(result,expectedResult)

    def test_send_negative_number_to_AlgorithmEngine(self):
        #Arrange
        value = -1
        expectedResult = "Enter a positive integer"

        #Act
        result = AlgorithmEngine.algorithm(value)

        #Assert
        self.assertEqual(result,expectedResult)

    def test_send_string_to_AlgorithmEngine(self):

        #Arrange
        value = 'string'
        expectedResult = "Enter a positive integer"

        #Act
        result = AlgorithmEngine.algorithm(value)

        #Assert
        self.assertEqual(result,expectedResult)




if __name__ == '__main__':
    unittest.main()
