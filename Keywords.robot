*** Settings ***

Library  SeleniumLibrary
Variables  ../PageObjects/locators.py

*** Keywords ***

Open my Browser
    [Arguments]     ${SiteUrl}  ${Browser}
    open browser    ${SiteUrl}  ${Browser}
    Maximize browser window
Enter UserName
    [Arguments]     ${UserName}
    input text      ${txt_login_username}   ${UserName}
Enter Password
    [Arguments]     ${Password}
    input text      ${txt_login_password}   ${Password}
Click SignIn
    click button  ${btn_signIn}

# configure akuafoil product
Click on the aquafoil
    click link  ${click_aku}
select product_category
    [Arguments]   ${prod_category1}
    select from list by label    ${prod_category}    ${prod_category1}
select size
    [Arguments]  ${size1}
    select from list by index  ${size}  ${size1}
select coating
    [Arguments]  ${coating1}
    select from list by label  ${coating}   ${coating1}
select spot UV sides
    [Arguments]  ${spot_uv_sides1}
    select from list by index  ${spot_uv_sides}  ${spot_uv_sides1}
select colorspec
    [Arguments]  ${colorspec1}
    select from list by index  ${colorspec}  ${colorspec1}
click on add_to_cart
    click element  ${add_to_cart}
upload the file_ak_front
    [Arguments]  ${upload1}
    choose file  ${upload_ak_front}  ${upload1}

# configure brownkraft product

click on the brownkraft_link
    click link  ${click_brown_kraft}
select prod_category_bk
    [Arguments]  ${prod_category2}
    select from list by label  ${prod_category_bk}  ${prod_category2}
upload the file_bk
    [Arguments]  ${upload2}
    choose file  ${upload_bk}  ${upload2}
click on continue_to_cart_bk
    click button  ${continue_to_cart_bk}
Empty the cart

close the browser
    close browser

