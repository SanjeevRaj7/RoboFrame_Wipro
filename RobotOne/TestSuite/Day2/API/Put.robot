***Settings***
Library    RequestsLibrary
Library    String
Library    Collections
Library    http

***Variables***
${base_URL}    http://reqres.in/
${Servicename}    api/users/2
${sample_body}    {"name":"morpheus","job":"zion resident"}



*** Test Cases ***
PostRequest
    RequestsLibrary.Create Session    baseURI       ${base_URL}
    &{body}=    Create Dictionary    name=morpheus job=zion resident
    &{headers}=    Create Dictionary    content-type=application/json
    ${response}=    Put On Session  baseURI    ${Servicename}    data=${body}    headers=${headers}
    Log To Console    ${response}
    Log To Console    ${response.status_code}