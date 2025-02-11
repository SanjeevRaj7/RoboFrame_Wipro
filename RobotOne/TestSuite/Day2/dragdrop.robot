*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}    chrome
${url}    https://the-internet.herokuapp.com/drag_and_drop

*** Test Cases ***
dragdrop
            Open Browser    ${url}    ${browser}
            Maximize Browser Window
            Sleep    4s
            #drag from source and put in destination
            Drag And Drop    xpath://div[@id='column-a']    xpath://div[@id='column-b']
            Sleep    4s
            Close Browser
