*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
verifyRadioButton
            Open Browser    ${url}    ${browser}
            Sleep    2s
            Select Radio Button    radioButton    radio1
            Sleep    2s
            Select Radio Button    radioButton    radio2
            Sleep    2s
            Select Radio Button    radioButton    radio3
            Sleep    2s
            Close Browser

