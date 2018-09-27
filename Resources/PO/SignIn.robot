*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=//*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/h1


*** Keywords ***

Verify Page Loaded
    Page Should Contain Element     ${SIGNIN_MAIN_HEADING}
    Element Text Should Be          ${SIGNIN_MAIN_HEADING}  Sign in

Log In With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill "Email" Fild  ${Username}
    Click "Sign In" Button
    Fill "Password" Fild  ${Password}


Fill "Email" Fild
    [Arguments]  ${Username}
    Log  Filling Email field with ${Username}
    Input Text  id=ap_email  ${Username}

Click "Sign In" Button
    Log  Clicking Submit Button
    Click Button  continue

Fill "Password" Fild
    [Arguments]  ${Password}
    Log  Filling Password field with ${Password}
    Input Text  id=ap_password  ${Password}
    Click Button  signInSubmit

