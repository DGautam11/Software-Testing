#Deepan Gautam
def determine_winner(user_input,computer_picks):

    if user_input == computer_picks:
        result = "It is a tie!"
        
    elif user_input == "rock" and computer_picks == "scissors":
        result = "You won"
       
    elif user_input == "paper" and computer_picks == "rock":
        result = "You won"
        
    elif user_input == "scissors" and computer_picks == "paper":
        result = "You won"
        
    else:
        result = "You lost"

    return result