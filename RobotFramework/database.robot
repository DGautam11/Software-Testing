*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem
Library    String
Library    Collections

*** Variables ***
${dbname}    robodb
${dbuser}    robo
${dbpass}    password
${dbhost}    localhost
${dbport}    3306
${initialdbname}    mysql
${path}    D:/SoftwareTesting/RobotFramework/dbfiles/    

*** Keywords ***
Make Connection
    [Arguments]    ${dbtoconnect}
    Connect To Database    pymysql    ${dbtoconnect}    ${dbuser}    ${dbpass}    ${dbhost}    ${dbport}    

*** Test Cases ***
Create database to be tested
    Make Connection    ${initialdbname}
    Execute Sql String    drop database if exists ${dbname};
    Execute Sql String    create database ${dbname};
    Execute Sql String    use ${dbname};

    ${GetCommands}=    Get File    ${path}create_clauses.txt
    @{CreationCommands}=    Split String    ${GetCommands}    ;
    Log    ${CreationCommands}
    ${TableCount}=    Get Length    ${CreationCommands}
    Log    ${TableCount}
    ${IndexToBeRemoved}    Evaluate    ${TableCount}-1
    Remove From List   ${CreationCommands}    ${IndexToBeRemoved}
    ${TableCount}=    Get Length    ${CreationCommands}
    Log    ${TableCount}

    FOR    ${index}    IN RANGE    ${TableCount}
        Execute Sql String    ${CreationCommands}[${index}]
    END
    Set Global Variable    ${TableCount}

*** Test Cases ***
Insert Data into database
    Make Connection    ${dbname}
    ${GetCommands}=    Get File    ${path}insert_data_clauses.txt
    @{InsertCommands}=    Split String    ${GetCommands}    ;
    Log    ${InsertCommands}
    ${InsertCount}=    Get Length    ${InsertCommands}
    ${IndexToBeRemoved}    Evaluate    ${InsertCount}-1
    Remove From List   ${InsertCommands}    ${IndexToBeRemoved}
    ${InsertCount}=    Get Length    ${InsertCommands}

    FOR    ${index}    IN RANGE    ${InsertCount}
        Execute Sql String    ${InsertCommands}[${index}]
    END

*** Test Cases ***
Connect to database and check tables
    Make Connection    ${dbname}
    @{tablesFromDatabase}=    Create List
    ${databaseTables}=    Query    show tables;
    ${countOfTables}=    Get Length    ${databaseTables}

    Should Be Equal    ${countOfTables}    ${TableCount}

    FOR    ${index}    IN RANGE    ${TableCount}
        ${table}=    Set Variable     ${databaseTables}[${index}]
        ${table}=    Convert To String    ${table}
        ${table}=    Remove String    ${table}    ,    (    )    '
        Append To List    ${tablesFromDatabase}    ${table}
        Table Must Exist    ${table}
    END

*** Test Cases ***
Check table student columns
    Make Connection    ${dbname}
    @{ColumnNameLists}=    Create List
    ${output}=    Query    desc student;
    ${length}=    Get Length    ${output}

    FOR    ${index}    IN RANGE    ${length}
        ${ColumnName}=    Set Variable    ${output}[${index}][0]
        Append To List    ${ColumnNameLists}    ${ColumnName}
        
    END

    Log    ${ColumnNameLists}
  





