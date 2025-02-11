*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}    chrome
${url}    https://the-internet.herokuapp.com/

*** Test Cases ***
DoubleClick
        Open Browser    ${url}    ${browser}
        Sleep    2s
        #double click
        Double Click Element    xpath://a[normalize-space()='A/B Testing']
        Sleep    2s
        Go Back
        #right click
        Open Context Menu    xpath://a[normalize-space()='Basic Auth']
        Sleep    2s
        Close Browser
