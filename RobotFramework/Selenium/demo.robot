*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test1
    Open Browser    http://google.com    chrome
    Maximize Browser Window
    Sleep    2s

*** Test Cases ***
Open Google and do search
    Open Browser    https://www.google.com    chrome
    Sleep    2s

    Maximize Browser Window
    Page Should Contain    Accept all

    Click Element    id:L2AGLb
    Page Should Contain    Google offered in

    Click Element    name:q
    Input Text    name:q    cat

    Click Button    XPath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    Wait Until Page Contains    People also ask
    ${count}=    Get Element Count    XPath:/html/body/div[8]/div/div[11]/div[1]/div[2]/div[2]/div/div/div[*]/div
    Log    ${count}
    Should Be Equal    ${count}    ${11}

    Close Browser


