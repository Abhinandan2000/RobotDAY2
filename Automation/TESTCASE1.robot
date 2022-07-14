*** Settings ***
Library  SeleniumLibrary
Library  ../Reusable/pom.py
Library  String




*** Variables ***





*** Test Cases ***
Testcase1
  Test_Read_XML
  Open Browser  ${url}  ${browser}
  Sleep    2
  Maximize Browser Window
  Sleep  2

  Wait Until Page Contains Element    //img[@class='mobile']

#  ${menubar}=    Split String    ${menubar}
  FOR  ${ele}  IN  ${menubar}
    Log  ${ele}
    Log To Console  ${ele}
    ${menubars}=  pom.menubar    ${menubar}
    Wait Until Page Contains Element  ${menubars}
    Sleep    2

  END











  
  
  
  
  
  
  
  
  
  
  
  Close All Browsers
  




*** Keywords ***

Test_Read_XML
         ${url}=        pom.readXml   url
         Set Global Variable    ${url}
         ${browser}=        pom.readXml    browser
         Set Global Variable    ${browser}
         ${menubar}=   pom.readXml   menubar
         Set Global Variable    ${menubar}
         ${services}=   pom.readXml  services
         Set Global Variable    ${services}


