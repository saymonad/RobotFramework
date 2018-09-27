*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}   # open blank browser

End Web Test
    Close Browser



Insert Testing Data
    Log  I am setting testing data ...

Cleanup Testing Data
    Log  I am cleaning up testing data ...