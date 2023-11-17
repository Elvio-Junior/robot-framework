*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL_BASE}              https://www.saucedemo.com/
${BROWSER}               chrome
${USER_NAME}             data:test:username
${USER_PASSWORD}         data:test:password
${LOGIN_BUTTON}          data:test:login-button
${MESSAGE_ERROR}         data:test:error
${USER_NAME_REQUIRED}    Epic sadface: Username is required
${PASSWORD_REQUIRED}               Epic sadface: Password is required
${USER_NAME_PASSWORD_NOT_MATCH}    Epic sadface: Username and password do not match any user in this service
${USER_LOCKED}                     Epic sadface: Sorry, this user has been locked out.
${STANDARD_USER}              standard_user
${LOCKED_OUT_USER}            locked_out_user
${PROBLEM_USER}               problem_user
${PERFORMANCE_GLITCH_USER}    performance_glitch_user 
${PASSWORD}                   secret_sauce
${WRONG_USER}                 wrong_user
${WRONG_PASSWORD}             wrong_password

*** Keywords ***    
Open Browser Login Page
    Open Browser    url=${URL_BASE}    browser=${BROWSER}

Input User Credentials "${USER}"
    Input Text    ${USER_NAME}    ${USER}    
        
Input Password Credentials "${PASSWORD}"
    Input Password    ${USER_PASSWORD}    ${PASSWORD}    
    
Submit Credentials
    Click Button    ${LOGIN_BUTTON}

Close Browsers
    Close All Browsers