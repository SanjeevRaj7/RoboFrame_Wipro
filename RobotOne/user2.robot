*** Settings ***
Library    OperatingSystem

*** Variables ***

*** Keywords ***

*** Test Cases ***

Testcase1
    [Tags]  Smoke
    log to console    This is first testcase with smoke test
Testcase2
    [Tags]  Regression
    log to console    This is second testcase with Regression test
Testcase3
    [Tags]  Sanity
    Log To Console    This is third testcase with Sanity test
Testcase4
    [Tags]  Systemtesting
    Log To Console    This is for fourth testcase
