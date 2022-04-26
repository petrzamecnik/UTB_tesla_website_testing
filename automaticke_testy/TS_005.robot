*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  run_on_failure=Nothing
Resource    ${CURDIR}/urls.robot
Resource    ${CURDIR}/keywords.robot
Resource    ${CURDIR}/variables.robot
Resource    ${CURDIR}/clickable.robot

*** Variables ***
${btn_shop}  //span[normalize-space()='Shop']
${btn_models_accessories}  //a[@title='Model S Accessories']//img
# ${btn_models_accessories}  //*[@id="page--home"]/main/div/div[3]/div/section/a/div/div
${url_models_accessories}  https://shop.tesla.com/category/vehicle-accessories/model-s

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
    go to  ${url_shop}
    sleep  1
    scroll to element  ${btn_models_accessories}
    sleep  1
    wait until element is visible  ${btn_models_accessories}
    sleep  1
    click element  ${btn_models_accessories}
    sleep  1
    close all browsers





