#Deepan Gautam
import unittest
import RockPaperScissorsEngine

class RockPaperScissorsTest(unittest.TestCase):

    def test_send_rock_rock_to_rockPaperScissorsEngine_return_tie(self):

        #Arrange
        user_input = "rock"
        computer_picks = "rock"

        expectedResult = "It is a tie!" 

        #Act
        result = RockPaperScissorsEngine.determine_winner(user_input,computer_picks)

        #Assert
        self.assertEqual(result,expectedResult)

    def test_send_rock_scissors_to_rockPaperScissorsEngine_return_youWon(self):
        #Arrange
        user_input = "rock"
        computer_picks = "scissors"

        expectedResult = "You won"

        #Act
        result = RockPaperScissorsEngine.determine_winner(user_input,computer_picks)

        #Assert
        self.assertEqual(result,expectedResult)

    def test_send_paper_scissors_to_rockPaperScissorsEngine_return_youLost(self):

        #Arrange
        user_input = "paper"
        computer_picks = "scissors"

        expectedResult = "You lost"

        #Act
        result = RockPaperScissorsEngine.determine_winner(user_input,computer_picks)

        #Assert
        self.assertEqual(result,expectedResult)

    def test_send_paper_rock_to_rockPaperScissorsEngine_return_youWon(self):

        #Arrange
        user_input = "paper"
        computer_picks = "rock"

        expectedResult = "You won"

        #Act
        result = RockPaperScissorsEngine.determine_winner(user_input,computer_picks)

        #Assert
        self.assertEqual(result,expectedResult)


if __name__ == '__main__':
    unittest.main()