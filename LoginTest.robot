
*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Variables ***
${Browser}      Chrome
${SiteUrl}      https://4over.com/
${User}         gandhib@4over.com
${pwd}          trade1@


*** Test Cases ***
LoginTest
    set selenium speed  2seconds
    Open my Browser    ${SiteUrl}   ${Browser}
    Enter UserName  ${user}
    Enter Password  ${pwd}
    click signin




