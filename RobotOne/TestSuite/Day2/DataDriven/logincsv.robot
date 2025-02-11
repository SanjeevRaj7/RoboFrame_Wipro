*** Settings ***
Library    SeleniumLibrary
Library    DataDriver                    C:/Wipro/PythonProject/RobotOne/TestSuite/Day2/TestData/ddtLogindata.csv    ddtLogindata
Resource    ../Resources/DDTKeywords.robot


Suite Setup        Launch App
Suite Teardown     Close App
Test Template      Invalidlogin

*** Test Cases ***
Login with user ${username} and password ${password}    Default    Userdata


*** Keywords ***
InvalidLogin
    [Arguments]     ${username}     ${password}
    Sleep    2s
    Set Email    ${username}
    Sleep    2s
    Set Password    ${password}
    Sleep       2s
    Click Login
    Sleep    2s
    Error Message Should be Visible
