*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Select%20From%20List%20By%20Index

*** Test Cases ***
login into the site
    open browser  ${url}    ${browser}
    click link  xpath:/html[1]/body[1]/div[2]/div[1]/ul[1]/li[1]/a[1]


