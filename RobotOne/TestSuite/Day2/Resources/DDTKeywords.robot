*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F

*** Keywords ***
Launch App
        Open Browser    ${url}      ${browser}
        Maximize Browser Window

Close App
    Close Browser

Open Login page
    Go To    ${url}

Set Email
    [Arguments]     ${username}
    Input Text      xpath://input[@id='Email']      ${username}

Set Password
    [Arguments]     ${password}
    Input Text      xpath://input[@id='Password']     ${password}
    
Click Login
    Click Button        xpath://button[contains(text(),'Log in')]

Error Message Should be Visible
     Page Should Contain    Wrong email

DashBoard Page Should Be Visible
     Page Should Contain    Dashboard
