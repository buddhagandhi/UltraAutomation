*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://4over.com/

*** Test Cases ***
LoginTest
    #set selenium timeout  10  seconds
    #wait until page contains  registration
    #set selenium implicit wait  10  seconds
    #${speed}=  get selenium speed
    #log to console  ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    #set selenium speed  3  seconds
    LoginToApplication
    click link  //a[text()='Akuafoil']
    sleep  5
    select from list by label  Product Category  Business Cards
    sleep  3
    select from list by index  Size  1
    sleep  5
    select from list by label  Coating  Spot UV
    sleep  3
    select from list by label  SPOT UV SIDES  Spot UV Back
    sleep  3
    select from list by index  Colorspec  1
    sleep  6
    click element  //button[contains(text(),'Add to cart & continue')]
    #${speed}=  get selenium speed
    #log to console  ${speed}
    close browser
*** Keywords ***
LoginToApplication
    input text  //input[@type='email'][@name='email']  gandhib@4over.com
    input text  //input[@type='password'][@name='password']  trade1@
    click element  //input[@type='submit'][@id='btnLogin']
    sleep  3