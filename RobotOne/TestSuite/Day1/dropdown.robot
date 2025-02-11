*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://the-internet.herokuapp.com/dropdown

*** Test Cases ***
VerifyDropDowns
                Open Browser    ${url}    ${browser}
                #Select From List By Label    id:dropdown    Option 2
                #List Selection Should Be    id:dropdown    timeout=8
                Sleep    5s
                Select From List By Value    id:dropdown    1
               # Select From List By Value    id:dropdown    2
                Sleep    5s
                Close Browser

