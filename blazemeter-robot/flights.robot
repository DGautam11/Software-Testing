
*** Settings ***
Resource    flights_keywords.robot

*** Variables ***
${welcome_message}    Welcome to the Simple Travel Agency!
${departure_city}    Boston
${destination_city}    Cairo    


*** Test Cases ***
The user can see welcome message
    [Tags]    Welcome_message
    Page Should Contain    ${welcome_message}
The user can search for flights
    [Tags]    Search_flights
    Select Departure City    ${departure_city}
    Select Destination City  ${destination_city}
    Search For Flights
    Page Should Contain    Flights from ${departure_city} to ${destination_city}
    There are available Flights

The user can choose one of the flights
    [Tags]    choose_flight
    Store flight information on separate variables
    Choose the flight

The user can see the choosen flight details on purchase page
    [Tags]    flight_details
     Validate flight details
     Store the total price of the flight in new variable

The user can purchase the flight
    [Tags]    flight_purchase
    Fill up the purchase form
    Click rememberMe
    Click purchase

The user can see message and payment information on confirmation page
    [Tags]    payment_info
    Page Should Contain    Thank you for your purchase today!
    Verify purchase information



    




   


    


    
    
