*** Settings ***
Library  SeleniumLibrary

#Suite Setup   Lauch_browser
#Suite Teardown    Close_Broswer

Test Setup  Lauch_browser
Test Teardown  Close_Broswer



*** Variables ***



*** Test Cases ***
Test_case_1
   Wait Until Page Contains Element    //img[@class='lnXdpd']
   
Test_case_2
  Wait Until Page Contains Element    //div[@id='SIvCob']



*** Keywords ***
Lauch_browser
  Open Browser  https://www.google.co.in/  Chrome
  Maximize Browser Window
  Sleep  4

Close_Broswer
   Close All Browsers
   


