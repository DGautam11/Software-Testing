import unittest
import AgeVerificationEngine

class AgeVerificationTest(unittest.TestCase):

   """
      Deepan Gautam
      Unit Test for Age Verification Program
   """

   def test_send_10_to_ageVerificationEngine_return_youAreAChild(self):
      #Arrange
      value = int(10)
      expectedResult="You are a child"

      #Act
      result = AgeVerificationEngine.verifyAge(value)

        #Assert
      self.assertEqual(result, expectedResult) 

   def test_send_18_to_ageVerificationEngine_return_youAreAnAdult(self):

      #Arrange
      value = int(18)
      expectedResult = "You are an adult"

      #Act
      result = AgeVerificationEngine.verifyAge(value)

      #Assert
      self.assertEqual(result,expectedResult)

   def test_send_76_to_ageVerificationEngine_return_youAreAPensioner(self):

      #Arrange
      value=int(76)
      expectedResult = "You are a pensioner"

      #Act
      result = AgeVerificationEngine.verifyAge(value)

      #Assert
      self.assertEqual(result,expectedResult)

   def test_send_string_to_ageVerificationEngine_return_pleaseEnterAValidAge(self):

      #Arrange
      value = 'string'
      expectedResult = "Please enter a valid age"

      #Act
      result = AgeVerificationEngine.verifyAge(value)

      #Assert
      self.assertEqual(result,expectedResult)

   def test_send_200_to_ageVerificationEngine_return_areYouAVampire(self):

      #Arrange
      value = 200
      expectedResult = "Are you a vampire?!"

      #Act
      result = AgeVerificationEngine.verifyAge(value)

      #Assert
      self.assertEqual(result,expectedResult)


if __name__ == '__main__':
    unittest.main()
