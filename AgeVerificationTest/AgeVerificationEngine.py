def verifyAge(age):

    """
      Deepan Gautam
      
    """

    try:
        age = int(age)

        if age < 18:
            return "You are a child"
        elif age < 70:
            return "You are an adult"
        elif age >= 70 and age <= 120:
            return "You are a pensioner"
        else:
            return "Are you a vampire?"

    except:
        return "Please enter a valid age"
    
    

