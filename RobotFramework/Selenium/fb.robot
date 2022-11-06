*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Facebook register
    Open Browser    https://www.facebook.com/r.php    chrome
    Sleep    2s

    Maximize Browser Window

    Page Should Contain    Only allow essential cookies
    Click Element    XPath://button[@title='Only allow essential cookies']

