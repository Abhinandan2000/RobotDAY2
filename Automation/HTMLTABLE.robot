*** Settings ***
Library  SeleniumLibrary

#Suite Setup   Lauch_browser
#Suite Teardown    Close_Broswer

Test Setup  Lauch_browser
Test Teardown  Close_Broswer



*** Variables ***

#variable1

*** Test Cases ***
Test_case_1
  ${rowcount}  Get Element Count    //table[@name='BookTable']/tbody/tr
  Log To Console    ${rowcount}




*** Keywords ***
Lauch_browser
  Open Browser  https://testautomationpractice.blogspot.com/  Chrome
  Maximize Browser Window
  Sleep  4

Close_Broswer
   Close All Browsers



