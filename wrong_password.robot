*** Settings ***
Documentation       A test suite with a single test for wrong password 
...
...                 This test follows the example using keywords from
...                 the SeleniumLibrary
Library             SeleniumLibrary

*** Test Cases ***
Wrong Password
    Open Browser    https://www.saucedemo.com/     chrome
    Maximize Browser Window
    Page Should Contain Element     login-button
    Input Text     user-name     standard_user
    Input Password     password     secret
    Click Button     login-button
    Element Text Should Be     css:*[data-test="error"]    Epic sadface: Username and password do not match any user in this service
    [Teardown]    Close Browser