*** Settings ***
Library    OperatingSystem

Documentation    This is the program is for testcase and testsuite
Suite Setup   Log  WiprobatchStart
Suite Teardown  log   WiprobatchEnd

*** Variables ***
${txtOne}   This is to set the variables in the application under test
${testOs}   This is to execute the Robot framework in Windows os
${testpr}   This is to execute  the log reSport

*** Keywords ***
CommonFunction1
    Log To Console    This is the function in Keyword session
    Log          testcase1
    Log          testcase2
    Log          testcase3
    
CommonFunction2
    Log To Console    the keyword commonfunction is called for overwritting
    log      visualStudio environment
    log      Pycharm environment
    log      Java environment
    Log      ${testos}


*** Test Cases ***
Documentation    This is session is used for execution of test cases
TC1
    log  operatingSystem windows
    log  operatingSystem Linux
    log  operatingSystem MacOs
    Log To Console    ${txtOne}
    CommonFunction1

    
TC2
    log  visualStudio environment
    log  Pycharm environment
    log  Java environment
    Log To Console    ${txtOs}
    CommonFunction1
    CommonFunction2
    
 
TC3
    log  testcase one
    log  testcase two
    log  testcase three
    Log To Console    ${testpr}
    CommonFunction1
    CommonFunction2


