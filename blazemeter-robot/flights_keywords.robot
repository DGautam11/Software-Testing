
#Custom Keyword for test suite
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://blazedemo.com/
${BROWSER}    Chrome

*** Keywords ***
Open Home page
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2s
    Maximize Browser Window

Close Browsers
    Close All Browsers

Select Departure City
    [Arguments]    ${departure_city}
    Select From List By Value    xpath://select[@name='fromPort']    ${departure_city}

Select Destination City
    [Arguments]    ${destination_city}
    Select From List By Value    xpath://select[@name='toPort']    ${destination_city}

Search For Flights
    Click Button    css:input[type='submit']

There are available Flights
    @{flights}=    Get WebElements    css:table[class='table']>tbody tr
    Should Not Be Empty    ${flights}

Store flight information on separate variables
    ${flight_number}=    Get Text    xpath://table[@class='table']/tbody/tr[3]/td[2]
    ${airline}=    Get Text    xpath://table[@class='table']/tbody/tr[3]/td[3]
    ${price}=    Get Text    xpath://table[@class='table']/tbody/tr[3]/td[5]

    Set Global Variable    ${flight_number}
    Set Global Variable    ${airline}
    Set Global Variable    ${price}

Choose the flight
    Click Element    xpath://table[@class='table']/tbody/tr[3]/td[1]/input

Validate flight details
    @{flight_details}=    Create List    ${flight_number}    ${airline}    ${price}
    FOR    ${flight_info}    IN    @{flight_details}
        
        Page Should Contain    ${flight_info}
        
    END

Store the total price of the flight in new variable
    ${total_flight_price}=    Get Text        /html/body/div[2]/p[5]/em
    Set Global Variable    ${total_flight_price}

Fill up the purchase form  
    Input Text    xpath://*[@id="inputName"]    Deepan
    Input Text    xpath://*[@id="address"]    Visamaentie 25 E 45 A
    Input Text    xpath://*[@id="city"]       Hamenlinna
    Input Text    xpath://*[@id="state"]    Kanta-Hame
    Input Text    xpath://*[@id="zipCode"]    13100
    Click Element    xpath://*[@id="cardType"]/option[3]
    Input Text    xpath://*[@id="creditCardNumber"]    192000101010101
    Input Text    xpath://input[@name='creditCardMonth']    10
    Input Text    xpath://input[@name='creditCardYear']     2026
    Input Text    xpath://input[@name='nameOnCard']     Deepan
    ${credit_card_month}    Get Element Attribute    xpath://*[@id="creditCardMonth"]    value
    ${credit_card_year}     Get Element Attribute    xpath://*[@id="creditCardYear"]     value
    Set Global Variable    ${credit_card_month}
    Set Global Variable    ${credit_card_year}

Click rememberMe
    Select Checkbox    rememberMe

Click purchase
    Click Button    css:input[type='submit']

Verify purchase information
    ${total_amount}=    Get Text    xpath://table[@class='table']/tbody/tr[3]/td[2]
    ${expiration}=    Get Text      xpath://table[@class='table']/tbody/tr[5]/td[2]

    Should Be Equal    ${expiration}       ${credit_card_month} /${credit_card_year}
    Should Be Equal    ${total_amount}    ${total_flight_price}
    
       








 
     
      



    
    

    