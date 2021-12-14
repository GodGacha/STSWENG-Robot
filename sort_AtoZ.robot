*** Settings ***
Documentation       A test suite with a single test for a to z 
...
...                 This test follows the example using keywords from
...                 the SeleniumLibrary
Library             SeleniumLibrary

*** Test Cases ***
Sort A to Z
    Open Browser    https://www.saucedemo.com/     chrome
    Maximize Browser Window
    Page Should Contain Element     login-button
    Input Text     user-name     standard_user
    Input Password     password     secret_sauce
    Click Button     login-button
    Select From List By Value    css:*[data-test="product_sort_container"]    az
    Element Text Should Be     xpath://*[@id="header_container"]/div[2]/div[2]/span/span     NAME (A TO Z)
    [Teardown]    Close Browser