*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***
Alerts
        Open Browser    ${url}    ${browser}
        Sleep    2s
        #information
        Click Element    xpath://button[@onclick='jsAlert()']
        Sleep    2s
        Handle Alert    action=ACCEPT    timeout=3
        Sleep    2s
        #confirmation
        Click Element    xpath://button[@onclick='jsConfirm()']
        Handle Alert    action=DISMISS    timeout=3
        Sleep    2s
        #prompt
        Click Element    xpath://button[@onclick='jsPrompt()']
        Input Text Into Alert    Sanjeev
        Handle Alert    action=ACCEPT    
        Sleep    2s
        Close Browser
