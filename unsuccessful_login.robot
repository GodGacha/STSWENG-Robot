*** Settings ***
Documentation       A test suite with a single test for locked out login 
...
...                 This test follows the example using keywords from
...                 the SeleniumLibrary
Library             SeleniumLibrary

*** Test Cases ***
Unsuccessful Login
    Open Browser    https://www.saucedemo.com/     chrome
    Maximize Browser Window
    Page Should Contain Element     login-button
    Input Text     user-name     locked_out_user
    Input Password     password     secret_sauce
    Click Button     login-button
    Element Text Should Be     xpath://*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Sorry, this user has been locked out.
    [Teardown]    Close Browser