*** Settings ***
Library    OperatingSystem
Library    Collections
Library    SeleniumLibrary

*** Variables ***
${Login_Url}   https://www.saucedemo.com/
${browser}     chrome

*** Test Cases ***
valid Login
    open browser  ${login_url}   ${browser}
    log To Console    Display the saucedemo website
    log To Console    ${{login_url}
    log To Console    ${{browser}
    BuiltIn.sleep     10s
    close browser



    
