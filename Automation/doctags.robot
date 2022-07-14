*** Settings ***

Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

Testcase1
  [Documentation]   smoke testing doc
  [Tags]  Smoke
  Log To Console    this is smoke testing

Testcase2
  [Documentation]   smoke testing2 doc
  [Tags]  Smoke2
  Log To Console    this is smoke testing2


*** Keywords ***