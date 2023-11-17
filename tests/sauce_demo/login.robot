*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/pages/sauce/login.robot
Resource    ../../resources/pages/sauce/inventory.robot
Test Setup       Open Browser Login Page
Test Teardown    Close Browsers

*** Test Cases ***
Should Return Error on Blank Credentials
    [Tags]  Blank Credentials
    Submit Credentials
    Element Should Be Visible    ${MESSAGE_ERROR}
    Element Text Should Be    ${MESSAGE_ERROR}    ${USER_NAME_REQUIRED}

Should Return Error on Blank User Credentials
    [Tags]  Blank User Credentials
    Input Password Credentials "${PASSWORD}"
    Submit Credentials
    Element Should Be Visible    ${MESSAGE_ERROR}
    Element Text Should Be    ${MESSAGE_ERROR}    ${USER_NAME_REQUIRED}

Should Return Error on Blank Password Credentials
    [Tags]  Blank Password Credentials
    Input User Credentials "${STANDARD_USER}"
    Submit Credentials
    Element Should Be Visible    ${MESSAGE_ERROR}
    Element Text Should Be    ${MESSAGE_ERROR}    ${PASSWORD_REQUIRED}

Should Return Error on Wrong User Credentials
    [Tags]  Wrong User Credentials
    Input User Credentials "${WRONG_USER}"
    Input Password Credentials "${PASSWORD}"
    Submit Credentials
    Element Should Be Visible    ${MESSAGE_ERROR}
    Element Text Should Be    ${MESSAGE_ERROR}    ${USER_NAME_PASSWORD_NOT_MATCH}

Should Return Error on Wrong Password Credentials
    [Tags]  Wrong Password Credentials
    Input User Credentials "${STANDARD_USER}"
    Input Password Credentials "${WRONG_PASSWORD}"
    Submit Credentials
    Element Should Be Visible    ${MESSAGE_ERROR}
    Element Text Should Be    ${MESSAGE_ERROR}    ${USER_NAME_PASSWORD_NOT_MATCH}

Should Return Error on Wrong User and Password Credentials
    [Tags]  Wrong User and Password Credentials
    Input User Credentials "${WRONG_USER}"
    Input Password Credentials "${WRONG_PASSWORD}"
    Submit Credentials
    Element Should Be Visible    ${MESSAGE_ERROR}
    Element Text Should Be    ${MESSAGE_ERROR}    ${USER_NAME_PASSWORD_NOT_MATCH}

Should Logon With standard_user
    [Tags]  Logon User standard_user
    Input User Credentials "${STANDARD_USER}"
    Input Password Credentials "${PASSWORD}"
    Submit Credentials
    Element Should Be Visible    ${HAMBURGER_MENU}

Should Return Error on Logon With locked_user
    [Tags]  Logon User locked_user
    Input User Credentials "${LOCKED_OUT_USER}"
    Input Password Credentials "${PASSWORD}"
    Submit Credentials
    Element Should Be Visible    ${MESSAGE_ERROR}
    Element Text Should Be    ${MESSAGE_ERROR}    ${USER_LOCKED}

Should Logon With problem_user
    [Tags]  Logon User problem_user
    Input User Credentials "${PROBLEM_USER}"
    Input Password Credentials "${PASSWORD}"
    Submit Credentials
    Element Should Be Visible    ${HAMBURGER_MENU}

Should Logon With performance_glitch_user
    [Tags]  Logon User performance_glitch_user
    Input User Credentials "${PERFORMANCE_GLITCH_USER}"
    Input Password Credentials "${PASSWORD}"
    Submit Credentials
    Element Should Be Visible    ${HAMBURGER_MENU}