*** Settings ***
Library    String
Library    OperatingSystem
Library    D:/SoftwareTesting/RobotFramework/Lib/myLibrary.py    

*** Keywords ***
Split text
    [Arguments]    ${text}
    @{list}=    Split String    ${text}
    ${word}=    Set Variable    ${list}[1]
    [Return]    ${word}

*** Test Cases ***
New text
    ${text}=     Set Variable    My beatiful shoes
    ${word}=    Split text    ${text}
    Should Be Equal    ${word}    beatiful
    Create File     D:/SoftwareTesting/RobotFramework/word.txt    ${word}/n 

*** Test Cases ***
Another Test
    ${text}=    Set Variable    Your shiny Car  
    ${word}=    Split text    ${text}
    Should Be Equal    ${word}    shiny
    Append To File    D:/SoftwareTesting/RobotFramework/word.txt    ${word}\n

*** Test Cases ***
Get Max value from list
    @{list}=     Create list    1    5    3
    ${value}=    Get Max From List    ${list}
    Log    ${value}