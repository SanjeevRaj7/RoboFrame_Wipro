*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}    chrome
${url}    https://the-internet.herokuapp.com/download

*** Test Cases ***
Filedownload
            Open Browser    ${url}    ${browser}
            Sleep    2s
            Click Element    xpath://a[contains(text(),'ims.txt')]
            Sleep    2s
            ${files}    List Files In Directory    C:/Users/Administrator/Downloads
            List Should Contain Value    ${files}    ims.txt
            Sleep    2s
            Close Browser
