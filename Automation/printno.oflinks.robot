*** Settings ***

Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

Validate_Drop_Down_Options

  Open Browser  https://techedtrainings.com/courses/  Chrome
  Maximize Browser Window
  Sleep  4

  ${linkscount}=  Get Element Count    xpath://a
  Log To Console    ${linkscount}
  Should Be True    ${linkscount}==156



  Close All Browsers