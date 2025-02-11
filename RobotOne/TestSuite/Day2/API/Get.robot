*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections
Library    http

***Variables***
${base_URL}    http://reqres.in/
${Servicename}    api/users?page=2

*** Test Cases ***
GetRequests
            RequestsLibrary.Create Session     baseURI    ${base_URL}
             ${response}=    Get On Session  baseURI    ${Servicename}    d
    Log To Console    ${response}
    Log To Console    ${response.status_code}