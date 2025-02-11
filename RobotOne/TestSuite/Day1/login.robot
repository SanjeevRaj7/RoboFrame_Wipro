*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
InvokeBrowser testcase 
        Open Browser    ${url}    ${browser}
        Sleep    4s
        Input Text        xpath://input[@name='username']    Admin
        Sleep    2s
        Input Password      xpath://input[@name='password']    admin123
        Sleep    2s
        Click Element    xpath://button[@type='submit']
        Sleep    2s
        Element Should Be Visible   linktext    admin
        Sleep    2s
        Close Browser