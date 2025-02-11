*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://the-internet.herokuapp.com/upload

*** Test Cases ***
fileupload
        Open Browser    ${url}    ${browser}
        Sleep    2s
        Choose File    xpath://input[@id='file-upload']    C:/Users/Administrator/Downloads/ims.txt
        Click Element    xpath://input[@id='file-submit']
        Sleep    2s
        Close Browser
        