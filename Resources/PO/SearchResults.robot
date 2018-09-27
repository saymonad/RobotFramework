*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    #Sleep  5s
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Link  css=#result_0 a.s-access-detail-page