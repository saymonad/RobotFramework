*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Load
    Go To  ${START_URL}

Veryfity Page Load
    Wait Until Page Contains  Your Amazon.com

Sign In Page
    Click Link  nav-link-accountList