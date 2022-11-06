#Deepan Gautam
import unittest
import TriangleTypeEngine

class TriangleTypeTest(unittest.TestCase):

    def test_send_4_8_6_to_triangleTypeEngine_return_triangleIsScalane(self):

        #Arrange
        side_a = 4
        side_b = 8
        side_c = 6

        expectedResult = "Triangle is Scalane."

        #Act
        result = TriangleTypeEngine.type_of_triangle(side_a,side_b,side_c)

        #Assert
        self.assertEqual(result,expectedResult)

    def test_send_6_6_12_to_triangleTypeEngine_return_triangleIsIsosceles(self):

        #Arrange
        side_a = 6
        side_b = 6
        side_c = 12

        expectedResult = "Triangle is Isosceles."

        #Act

        result = TriangleTypeEngine.type_of_triangle(side_a,side_b,side_c)

        #Assert
        self.assertEqual(result,expectedResult)

    def test_send_5_5_5_to_triangleTypeEngine_return_triangleIsEquilateral(self):
        #Arrange
        side_a = 5
        side_b = 5
        side_c = 5

        expectedResult = "Triangle is Equilateral."

        #Act
        result = TriangleTypeEngine.type_of_triangle(side_a,side_b,side_c)

        #Assert
        self.assertEqual(result,expectedResult)
    
    def test_send_3_6_20_to_triangleTypeEngine_return_error_message(self):

        #Arrange
        side_a = 3
        side_b = 6
        side_c = 20

        expectedResult = "Triangle is not possible from given sides."

        #Act
        result = TriangleTypeEngine.type_of_triangle(side_a,side_b,side_c)

        #Assert
        self.assertEqual(result,expectedResult)

    def test_invalid_input_to_triangleTypeEngine_return_error_message(self):

        #Arrange
        side_a = "s"
        side_b = 2
        side_c = 3

        expectedResult = "Invalid input data value"

        #Act
        result = TriangleTypeEngine.type_of_triangle(side_a,side_b,side_c)

        #Assert
        self.assertEqual(result,expectedResult)

    
if __name__ == '__main__':
    unittest.main()