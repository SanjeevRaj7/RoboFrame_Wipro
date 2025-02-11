*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.saucedemo.com/

*** Test Cases ***
VerifyLogin
        Open Browser    ${url}    ${browser}
        Sleep    2s
        Input Text    xpath://input[@id='user-name']    standard_user
        Sleep    2s
        Input Text    xpath://input[@id='password']    secret_sauce
        Sleep    2s
        Click Element    xpath://input[@type='submit']
        Sleep    2s
        Close Browser
        