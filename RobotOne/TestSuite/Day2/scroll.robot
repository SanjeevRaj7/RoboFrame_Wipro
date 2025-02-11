*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}    chrome
${url}     https://www.amazon.in/

*** Test Cases ***
keyboard
        Open Browser    ${url}    ${browser}
        Sleep    2s
        Maximize Browser Window
        Sleep    2s
        Scroll Element Into View    xpath://a[normalize-space()='Amazon Science']
        Sleep    2s
        Click Element    xpath://a[normalize-space()='Amazon Science']
        Close Browser
        
