*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  run_on_failure=Nothing
Resource    ${CURDIR}/urls.robot
Resource    ${CURDIR}/keywords.robot
Resource    ${CURDIR}/variables.robot
Resource    ${CURDIR}/clickable.robot

*** Variables ***
${btn_shop}  //span[normalize-space()='Shop']
${btn_cart}  //a[@aria-label='See your cart']
${btn_models_accessories}  //*[@id="page--home"]/main/div/div[3]/div/section/a/div
${btn_add_to_cart}  //input[@value = "Add To Cart"]

${link_models_liners}  //a[text()="Model S All-Weather Interior Liners"]
${url_models_accessories}  https://shop.tesla.com/category/vehicle-accessories/model-s
${search_icon}  //label[@for='searchTerm']//*[name()='svg']
${search_input}  //input[@id='searchTerm']

${cart_item}  //body/main/div//img
${wall_connector_item}  //a[@class='product-tile__link active'][normalize-space()='Wall Connector']
${remove_item}  //a[normalize-space()='Remove']
${remove_item_confirm}  //button[@class='tds-btn tds-btn--secondary']
${empty_cart_message}  //p[@class='empty-cart-message']


*** Test Cases ***
TC_001
    create webdriver  ${browser}
    go to  ${url_root}
    wait until element is visible  ${btn_shop}
    click element  ${btn_shop}
    location should be  ${url_shop}
    close all browsers

TC_002
    create webdriver  ${browser}
    set selenium speed  0.3s
    go to  ${url_shop_noredirect}
    scroll to element  ${btn_models_accessories}
    wait and click  ${btn_models_accessories}
    wait and click  ${link_models_liners}
    wait and click  ${btn_add_to_cart}
    wait and click  ${btn_cart}
    page should contain element  ${cart_item}
    close all browsers

TC_003
    # TODO : better implementation??
    create webdriver  ${browser}
    set selenium speed  0.3s
    go to  ${url_shop_noredirect}
    scroll to element  ${btn_models_accessories}
    wait and click  ${btn_models_accessories}
    wait and click  ${link_models_liners}
    wait and click  ${btn_add_to_cart}
    wait and click  ${btn_cart}
    page should contain element  ${cart_item}

    go to  ${url_root}
    go to  ${url_shop}
    wait and click  ${btn_cart}
    page should contain element  ${cart_item}
    close all browsers

TC_004
    create webdriver  ${browser}
    set selenium speed  0.3s
    go to  ${url_shop_noredirect}
    scroll to element  ${btn_models_accessories}
    wait and click  ${btn_models_accessories}
    wait and click  ${link_models_liners}
    wait and click  ${btn_add_to_cart}
    wait and click  ${btn_cart}
    page should contain element  ${cart_item}

    wait and click  ${remove_item}
    wait and click  ${remove_item_confirm}
    sleep  1s
    page should contain element  ${empty_cart_message}
    close all browsers

TC_005
    create webdriver  ${browser}
    set selenium speed  0.3s
    go to  ${url_shop_noredirect}
    wait and click  ${search_icon}
    input text  ${search_input}  Wall Connector  clear=false
    press keys  ${search_icon}  RETURN
    page should contain element  ${wall_connector_item}
    close all browsers

TC_006
    create webdriver  ${browser}
    go to  ${url_shop_noredirect}
    wait and click  ${btn_cart}
    wait and click  ${btn_shop}
    location should be  ${url_shop}
    close all browsers













