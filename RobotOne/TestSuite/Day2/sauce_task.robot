*** Settings ***
Library    SeleniumLibrary
Resource    Resources/DDTKeywords.robot

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
        Click Element    xpath://button[@id='add-to-cart-sauce-labs-backpack']
        Sleep    2s
        Click Element    xpath://a[@class='shopping_cart_link']
        Sleep    2s
        Click Element    xpath://button[@id='checkout']
        Sleep    2s
        Input Text    xpath://input[@id='first-name']    Sanjeev
        Sleep    2s
        Input Text    xpath://input[@id='last-name']    Raj
        Sleep    2s
        Input Text    xpath://input[@id='postal-code']    641046
        Sleep    2s
        Click Element    xpath://input[@id='continue']
        Scroll Element Into View    xpath://button[@id='finish']
        Click Element    xpath://button[@id='finish']
        Scroll Element Into View    xpath://div[@id='checkout_complete_container']
        Sleep    2s
        Close Browser
        