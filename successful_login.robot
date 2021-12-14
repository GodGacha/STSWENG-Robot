*** Settings ***
Documentation       A test suite with a single test for valid login 
...
...                 This test follows the example using keywords from
...                 the SeleniumLibrary
Library             SeleniumLibrary

*** Test Cases ***
Successful Login
    Open Browser    https://www.saucedemo.com/     chrome
    Maximize Browser Window
    Page Should Contain Element     login-button
    Input Text     user-name     standard_user
    Input Password     password     secret_sauce
    Click Button     login-button
    Element Text Should Be     class:title    PRODUCTS
    [Teardown]    Close Browser