*** Variables ***
${name}  Sanjeev 
${city}  Coimbatore
@{list}  Apple Banana
&{dict}  username=admin  password=admin123


*** Test Cases ***
display Variables
    Log To Console    ${name}
    Log To Console    ${city}
    FOR    ${element}    IN    @{list}
        Log To Console   ${element}
        
    END



