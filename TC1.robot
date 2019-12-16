*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://4over.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    maximize browser window
    LoginToApplication
    click element    xpath://a[text()='Akuafoil']
    set selenium timeout    15 seconds
    wait until page contains    Product Category
    select from list by index    name:Product Category    1
    sleep  3
    select from list by index  Size  1
    sleep  5
    select from list by label  Coating  Spot UV
    sleep  3
    select from list by label  SPOT UV SIDES  Spot UV Back
    sleep  3
    select from list by index  Colorspec  1
    sleep  7
    #click element  //button[contains(text(),'Add to cart & continue')]
    #set selenium implicit wait  15 seconds
    close browser
*** Keywords ***
LoginToApplication
    input text  //input[@type='email'][@name='email']  gandhib@4over.com
    input text  //input[@type='password'][@name='password']  trade1@
    click element  //input[@type='submit'][@id='btnLogin']
    sleep  6

#1) Scalar .....syntax for scalar variable is ${SCALAR VARIABLE}  VALUE              for eg url
#2) List ...........syntax for list variable is @{VARIABLE NAME}  VALUE1  VALUE2  VALUE3  SO ON....
#for eg user details OR credentials    IT CONTAINS MANY NO OF VALUES
#FOR EG  @{CREDENTIALS}  ADMIN  ADMIN123
#3) Dictionary  .....syntax for dictionary variable is &{VARIABLE NAME}  K1=VALUE1  K2=VALUE2
#for eg &{LOGIN} with username and password as one dictionary variable  .
#IT IS STORED IN KEY AND VALUE PAIRS
#FOR EG &{LOGINDATA}  USERNAME=ADMIN  PASSWORD=ADMIN123

