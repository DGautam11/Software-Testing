*** Settings ***
Library    OperatingSystem
Library    Collections
Library    String
Library    SeleniumLibrary



*** Test Cases ***
Read addresses for ping command from file
    #file path
    ${file}=    Set Variable    D:/SoftwareTesting/RobotFramework/Ping/webpages.txt
    File Should Exist    ${file}
    #Read data from file to variable
    ${contents}=    Get File    ${file}
    #Create word list from file webpages ${webpages}
    @{webpages}=    Split String    ${contents}
    #Set created list as a global varibale
    Set Global Variable    ${webpages}

    

*** Test Cases ***
Find out IP, average ping time in loop and create result file
    #create empty result file
    Create File    D:/SoftwareTesting/RobotFramework/Ping/ping_result.txt    
    #Storing the path of newly created file in a variable
    ${file}=    Set Variable     D:/SoftwareTesting/RobotFramework/Ping/ping_result.txt
    File Should Exist    ${file}
    #find out how many web address are included in ${webpages} list and store value to variable ${count}
    ${count}    Get Length    ${webpages}
    #loop list of webpages and do ping command
    FOR    ${counter}    IN RANGE    ${count}
        @{ping_result}=    Run And Return Rc And Output    ping ${webpages}[${counter}]
        
        #Find IP address and Ping Time from ping result
        @{ping_info}=    Split String    ${ping_result}[1]
        ${IPAddress}=    Set Variable    ${ping_info}[2]
        ${PingTime}=    Set Variable    ${ping_info}[-1]

        #Add information to result file
        Append To File    ${file}    IPAddress:${IPAddress} | PingTime:${PingTime} ${\n}

        # Test!! Ping time should be under 50ms
        #Getting part of ping time that contains the intger value for seconds
        ${ping_seconds}=    Get Substring    ${PingTime}    0    -2
        ${ping_seconds}=    Convert To Integer    ${ping_seconds}
        Should Be True    ${ping_seconds} < 50
        
    END   

    
    


