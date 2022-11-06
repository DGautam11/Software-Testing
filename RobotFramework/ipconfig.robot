*** Settings ***
Library    OperatingSystem
Library    String
Library    Collections

*** Test Cases ***
Get IPv4 Address Info
    ${result}=    Run And Return Rc And Output    ipconfig
    @{wordList}=    Split String    ${result}[1]
    Set Global Variable    ${wordList}
    ${index}=     Get Index From List    ${wordList}    Subnet
    ${index}=    Evaluate    ${index}-1
    ${IPAddress}=    Set Variable    ${wordList}[${index}]
    Log    ${IPAddress}

Get Subnet Mask
    ${result}=    Run And Return Rc And Output    ipconfig
    @{wordList}=    Split String    ${result}[1]
    Set Global Variable    ${wordList}
    ${index}=     Get Index From List    ${wordList}    Default
    ${index}=    Evaluate    ${index}-1
    ${subNet}=    Set Variable    ${wordList}[${index}]
    Log    ${subNet}

Get Default Gateway
    ${result}=    Run And Return Rc And Output    ipconfig
    @{wordList}=    Split String    ${result}[1]
    Set Global Variable    ${wordList}
    ${index}=     Get Index From List    ${wordList}    Default
    ${index}=    Evaluate    ${index}+12
    ${gateway}=    Set Variable    ${wordList}[${index}]
    Log    ${gateway}