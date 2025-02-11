***Settings***
Library    RequestsLibrary
Library    String
Library    Collections
Library    http
Library     json

***Variables***
${base_URL}    http://reqres.in/
${Servicename}    api/users/2





*** Test Cases ***
Delete
    RequestsLibrary.Create Session    baseURI       ${base_URL}
    ${response}=    Delete On Session  baseURI    ${Servicename}
    Log To Console    ${response}
    Log To Console    ${response.status_code}