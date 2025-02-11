*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://the-internet.herokuapp.com/checkboxes

*** Test Cases ***
InvokeBrowser testcase 
        Open Browser    ${url}    ${browser}
        Sleep    4s
        Select Checkbox    (//input[@type='checkbox'])[1]
        Checkbox Should Be Selected    (//input[@type='checkbox'])[1]
        Sleep    2s
        Unselect Checkbox    (//input[@type='checkbox'])[2]
        Sleep    2s
        Close Browser
        