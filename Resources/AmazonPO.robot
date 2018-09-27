*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***

Login
    [Arguments]  ${Username}  ${Password}
    SignIn.Log In With Valid Credentials  ${Username}  ${Password}


Load Amazon Page
    LandingPage.Load
    LandingPage.Veryfity Page Load

Load Amazon Sign In Page
    LandingPage.Sign In Page


Search for Product
    TopNav.Search for Products
    TopNav.Submit Search
    SearchResults.Verify Search Completed

Select First Product from Search Result
    SearchResults.Click Product Link
    Product.Verify Page Loaded


Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded






