*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart  # this is hot place that can generate failure

Proceed to Checkout
    Click Link  id=hlb-ptc-btn-native