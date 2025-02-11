*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
InvokeBrowser testcase 
        Open Browser    ${url}    ${browser}
        Sleep    4s
        Close Browser
