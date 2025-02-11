*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}    chrome
${url}    https://the-internet.herokuapp.com/key_presses

*** Test Cases ***
keyboard
        Open Browser    ${url}    ${browser}
        Sleep    2s
        Press Key    xpath://input[@id='target']    ${SPACE}
        Sleep    2s
        #Press Key    xpath://input[@id='target']    ${SHIFT}
        #Sleep    2s{
        #Press Key    xpath://input[@id='target']    ${TAB}
        #Sleep    2s
        Close Browser
