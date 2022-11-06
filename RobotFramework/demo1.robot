*** Settings ***
Library    String
Library    Dialogs
Library    Collections
Library    OperatingSystem
Test Setup    Create Data For Tests

*** Keywords ***
Create Data For Tests
    @{names}=    Create List    Donald    Mickey     Suraj    Goofy    Daisy
    Set Test Variable    ${names}

*** Variables ***
${one}    Donald
${two}    Duck
@{list}   1    2    3    4
#@{names}    Donald    Mickey    Suraj    
*** Test Cases ***
Check outcome
    ${three}=    Set Variable     Donald Duck

    Should Be Equal    ${One} ${two}    ${three}

*** Test Cases ***
Ask User Input
    ${user}=     Set Variable    Hello World
    #${user}=    Get Value From User     Please input your text
    Should Be Equal    ${user}    Hello World

*** Test Cases ***
Check Value From The List
    ${number}=    Set Variable    ${list}[2]
    Should Be Equal    ${number}    3

*** Test Cases ***
Add value to the list
    ${addition}=    Set Variable    333
    Append To List    ${list}     ${addition}
    Should Be Equal    ${list}[4]    333

*** Test Cases ***
List Length
    ${length}=     Get Length    ${list}
    ${expectedResult}=    Convert To Integer    4
    Should Be Equal    ${length}    ${expectedResult}

*** Test Cases ***
Put list in alphabetical order
    Sort List    ${names}
    Should Be Equal    ${names}[0]    Daisy

*** Test Cases ***
Remove From List
    Remove From List    ${names}    0
    Should Be Equal    ${names}[0]    Mickey

*** Test Cases ***
Loop through the numbers
    FOR    ${index}    IN RANGE    1    10    
        Log    ${index}
        ${new}=    Set Variable    ${index}
        
    END

*** Test Cases ***
Loop through the list
    FOR    ${element}    IN    @{names}
        Log    ${element}
        ${new}=    Set Variable    ${element}
    END

*** Test Cases ***
Make new directory
    Create Directory    D:\SoftwareTesting\RobotFramework\demo
    Directory Should Exist    D:\SoftwareTesting\RobotFramework\demo

*** Test Cases ***
Create new txt file
    ${path}=    Set Variable    D:\SoftwareTesting\RobotFramework\demo
    Create File    ${path}/demo.txt    This is Fun!.
    File Should Exist    ${path}/demo.txt
    File Should Not Be Empty     ${path}/demo.txt   

*** Test Cases ***
Delete File And Folder
    ${path}=    Set Variable    D:\SoftwareTesting\RobotFramework\demo
    Remove File    ${path}/demo.txt
    Directory Should Be Empty    ${path}
    Remove Directory    ${path}   

*** Test Cases ***
Ping Web Page and Store the Ping time
    ${output}=    Run And Return Rc And Output    ping www.google.com
    Log    ${output}    

*** Test Cases ***
Read Text From File and Create a Words List
    ${output}=    Get File    D:/SoftwareTesting/RobotFramework/example_text.txt
    Log    ${output}
    ${output}=    Remove String    ${output}
    Log    ${output}
    @{wordList}=    Split String    ${output}
    ${index}=    Get Index From List    ${wordList}    students 
    ${expectedResult}=    Convert To Integer    -1
    Should Be Equal    ${index}    ${expectedResult}  