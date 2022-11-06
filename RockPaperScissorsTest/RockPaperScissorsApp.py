# Deepan Gautam
import random 
import RockPaperScissorsEngine

user_wins = 0
computer_wins = 0
ties = 0

options = ["rock","paper","scissors"]

#calculates the total score
def score(result):

    global ties
    global user_wins
    global computer_wins

    if result == "You won":
        user_wins += 1
    elif result == "You lost":
        computer_wins += 1
    else:
        ties += 1
    

while True:
    user_input = input("Type Rock/Paper/Scissors or Q to quit").lower()

    if user_input == "q":
            break

    if user_input not in options:
            print("Type rock paper or scissors")
            continue  

    random_number = random.randint(0,2)
        #rock:0, paper:1, scissors:2
    computer_picks = options[random_number]
    print("Computer picked",computer_picks + ".")

    result = RockPaperScissorsEngine.determine_winner(user_input,computer_picks)
    print(result)
    score(result)
    

print("You won",user_wins,"times")
print("The computer won",computer_wins,"times")
print('Ties',ties,'times')
print("GoodBye")