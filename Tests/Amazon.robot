*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/AmazonPO.robot
Resource  ../Resources/Common.robot

Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER} =  ie
${START_URL}=  https://www.amazon.com
${SEARCH_TERM}=  Ferrari 458 Italia Diecast Model Kit
${LOGIN_EMAIL} =  szymon.adamus@gmail.com
${LOGIN_PASSWORD} =  myPassword1

*** Test Cases ***
User search for product
    [Documentation]  This is some basic info about the test
    [Tags]  Search
    AmazonPO.Search for Product



Logget out user should be asked to signin to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Add_product
    AmazonPO.Load Amazon Page
    AmazonPO.Search for Product
    AmazonPO.Select First Product from Search Result
    AmazonPO.Add Product to Cart
    AmazonPO.Begin Checkout
    AmazonPO.Login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}

Should be able to log in
    [Documentation]  Login_to_acount
    [Tags]  Login_to_acount
    AmazonPO.Load Amazon Sign In Page
    AmazonPO.Login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}