*** Settings ***
Library    OperatingSystem
Library    RequestsLibrary
Library    JsonValidator


*** Keywords ***
Create Session Http Request
    [Arguments]    ${QUERY_CEP}       
    Create Session  get_cep  https://viacep.com.br/ws/${QUERY_CEP}/json/    verify=true

*** Test Cases ***
Get a Valid CEP
    Create Session Http Request    14405415
    ${schema}=    OperatingSystem.Get File    ./helpers/backend/via_cep_schema.json
    Log    ${schema}
    ${api_response}=    GET On Session    get_cep    /    
    Status Should Be    200
    Validate Jsonschema From File    ${api_response.json()}    ./helpers/backend/via_cep_schema.json
    
Get a Invalid CEP
    Create Session Http Request    99999999
    ${api_response}=    GET On Session    get_cep    /    
    Status Should Be    200
    Validate Jsonschema From File    ${api_response.json()}    ./helpers/backend/via_cep_schema_error.json
