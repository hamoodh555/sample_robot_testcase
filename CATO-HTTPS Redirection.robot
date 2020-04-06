*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***

To verify HTTPS Redirection
    Open Browser    http://cvm.xerago.net/    chrome
    Set Selenium Implicit Wait    10
    ${link}    Get Location
    Should Match    ${link}    https://cvm.xerago.net/#/Login