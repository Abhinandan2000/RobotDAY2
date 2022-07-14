*** Settings ***
Library  SeleniumLibrary




*** Variables ***
${url}  https://www.docker.com/
${browser}  Chrome
${presenturl}  https://www.docker.com/get-started/



*** Test Cases ***
Test_Case1
  Open Browser  ${url}  ${browser}
  Maximize Browser Window


#validate the docker logo an header link
  Wait Until Page Contains Element    xpath://li[@class='logo']/a
  Wait Until Page Contains Element    xpath:(//a[text()='Products'])[1]
  Wait Until Page Contains Element    xpath:(//a[text()='Developers'])[1]

  #mouseover on develpoer links
  Mouse Over    xpath:(//a[text()='Developers'])[1]
  Sleep    3

  #click on getting started dropdown option
  Click Element    xpath:(//a[text()='Getting started'])[1]
  Sleep  3


  #validate getting started url
  ${newurl}=  Get Location
  Log To Console    ${newurl}
  Should Be True    ${presenturl}==${newurl}


  #validate header      "Get Started with Docker"
  Wait Until Page Contains  Get Started with Docker

  #Navigate back to home page
  Go Back


  Sleep    3

  Close All Browsers






*** Keywords ***