*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}    chrome
${url}     https://www.amazon.in/

*** Test Cases ***
submenu
        Open Browser    ${url}    ${browser}
        Maximize Browser Window
        Sleep    4s
        Mouse Over    xpath://span[normalize-space()='Prime']
        Sleep    2s
        Click Element    xpath://img[@id='multiasins-img-link']
        Sleep    2s
        Close Browser
        
