*** Settings ***
Library    SeleniumLibrary   
 
*** Variables ***
 
 ${verify link}    https://cvm.xerago.net/#/Creator/Recommendation_Screen/
 ${message}    Please enter a valid username/password

*** Test Cases ***

To Verify login with Valid credentials
        
  Open Browser    https://cvm.xerago.net/    chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    10
  Input Text    id=form_username    cvmcreator
  Input Text    id=form_password    CVMdemo@2019  
  Click Button  id=form_login
  Sleep    20   
  ${link}    Get Location
  Should Match    ${link}    ${verify link}   
  Close Browser      
  
To verify login with invalid credentials
  Open Browser    https://cvm.xerago.net/    chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    10
  Input Text    id=form_username    cvmcreator
  Input Text    id=form_password    CVMdemo2019  
  Click Button  id=form_login
  Sleep    5   
  ${alert}    Get Text    id=msg
  Should Match    ${alert}    ${message}      

  

 
  
 
     
  