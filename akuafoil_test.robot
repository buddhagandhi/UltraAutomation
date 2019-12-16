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
    set selenium implicit wait  25 seconds
    click on the aquafoil
    select product_category  ${prod_category1}
    select size   ${size1}
    select coating  ${coating1}
    select spot UV sides    ${spot_uv_sides1}
    select colorspec    ${colorspec1}
    set selenium timeout  15 seconds
    wait until element is enabled   ${add_to_cart}
    ${a}=    get text  xpath:(//div[@class='item-price'])[1]
    ${b}=    get text  xpath:(//div[@class='item-price'])[2]
    ${total}=    get text  css:dd.pricing-available
    log to console  ${a}+${b} is summation and ${total} is the total at the bottom
    click on add_to_cart
    page should contain  ${uploader_page_txt}
    log to console  Uploader page contains ${uploader_page_txt}
    ${title}=  get title
    log to console  the title of the page is ${title}
    : for  ${i}  IN RANGE  1   4
    \   upload the file_ak_front  ${upload1}



