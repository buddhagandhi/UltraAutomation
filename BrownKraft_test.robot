*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
Resource  ../Resources/Ultra_Variables.robot
Test Setup  Open my Browser  ${SiteUrl}   ${Browser}

#Test Teardown  close the browser

*** Test Cases ***
LoginTest
    Enter UserName  ${user}
    Enter Password  ${pwd}
    click signin
    set selenium speed  3 seconds
    set selenium implicit wait  20 seconds
    click on the brownkraft_link
    select prod_category_bk  ${prod_category2}
    select size  ${Size2}
    select colorspec  ${colorspec2}
    set selenium timeout  10 seconds
    wait until element is enabled   ${add_to_cart}
    click on add_to_cart
    sleep  3 seconds
    page should contain  ${uploader_page_txt}
    log to console  Uploader page contains ${uploader_page_txt}
    ${title}=  get title
    log to console  the title of the page is ${title}
    : for  ${i}  IN RANGE  1   3
    \   upload the file_bk  ${upload2}
    click on continue_to_cart_bk

