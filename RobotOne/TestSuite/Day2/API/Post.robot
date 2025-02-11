*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections
Library    http

***Variables***
${base_URL}    http://reqres.in/
${Servicename}    api/users
${sample_body}    {"name":"morpheus","job":"leader"}



*** Test Cases ***
PostRequest
    RequestsLibrary.Create Session    baseURI       ${base_URL}
    &{body}=    Create Dictionary    name=morpheus job=leader
    &{headers}=    Create Dictionary    content-type=application/json
    ${response}=    POST On Session  baseURI    ${Servicename}    data=${body}    headers=${headers}
    Log To Console    ${response}
    Log To Console    ${response.status_code}
