import unittest
import FizzBuzzEngine

class MyFizzBuzzTest(unittest.TestCase):
    def test_Send_1_To_FizzBuzzEngine_Return_1(self):
        #Arrange
        value = int(1)
        expectedResult = int(1)

        #Act
        result = FizzBuzzEngine.newOutput(value)

        #Assert
        self.assertEqual(result, expectedResult)
    
    def test_Send_2_To_FizzBuzzEngine_Return_2(self):
        #Arrange
        value = int(2)
        expectedResult = int(2)

        #Act
        result = FizzBuzzEngine.newOutput(value)

        #Assert
        self.assertEqual(result, expectedResult)

    def test_Send_3_To_FizzBuzzEngine_Return_Fizz(self):
        #Arrange
        value = int(3)
        expectedResult = "Fizz"

        #Act
        result = FizzBuzzEngine.newOutput(value)

        #Assert
        self.assertEqual(result, expectedResult)

    def test_Send_4_To_FizzBuzzEngine_Return_4(self):
        #Arrange
        value = int(4)
        expectedResult = int(4)

        #Act
        result = FizzBuzzEngine.newOutput(value)

        #Assert
        self.assertEqual(result, expectedResult)
    
    def test_Send_5_To_FizzBuzzEngine_Return_Buzz(self):
        #Arrange
        value = int(5)
        expectedResult = "Buzz"

        #Act
        result = FizzBuzzEngine.newOutput(value)

        #Assert
        self.assertEqual(result, expectedResult)
    
    def test_Send_6_To_FizzBuzzEngine_Return_Fizz(self):
        #Arrange
        value = int(6)
        expectedResult = "Fizz"

        #Act
        result = FizzBuzzEngine.newOutput(value)

        #Assert
        self.assertEqual(result, expectedResult)

    def test_Send_9_To_FizzBuzzEngine_Return_Fizz(self):
        #Arrange
        value = int(9)
        expectedResult = "Fizz"

        #Act
        result = FizzBuzzEngine.newOutput(value)

        #Assert
        self.assertEqual(result, expectedResult)

    def test_Send_10_To_FizzBuzzEngine_Return_Buzz(self):
        #Arrange
        value = int(10)
        expectedResult = "Buzz"

        #Act
        result = FizzBuzzEngine.newOutput(value)

        #Assert
        self.assertEqual(result, expectedResult)

    def test_Send_15_To_FizzBuzzEngine_Return_FizzBuzz(self):
        #Arrange
        value = int(15)
        expectedResult = "FizzBuzz"

        #Act
        result = FizzBuzzEngine.newOutput(value)

        #Assert
        self.assertEqual(result, expectedResult)




if __name__ == '__main__':
    unittest.main()