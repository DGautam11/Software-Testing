#Deepan
def algorithm(number):
    try:
        number = int(number)
        if number <  1:
            return "Enter a positive integer"
        
        num_seq = [number]
    
        while number > 1:

            if number % 2 == 0:
                number = int(number / 2)
            else:
                number = number * 3 + 1

            num_seq.append(number)

    except:
        return "Enter a positive integer"
    
    return num_seq

    
            
    
        


    
