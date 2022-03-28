*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  run_on_failure=Nothing
Resource    ${CURDIR}/urls.robot
Resource    ${CURDIR}/keywords.robot
Resource    ${CURDIR}/variables.robot


# Open Browser ${url} ${prohlizec}
# browsers, urls, xpaths(btns, inputs...), values

*** Test Cases ***
TC_001
    set selenium speed  2
    create webdriver  ${browser}
    go to  ${url_login}
    wait until element is visible   //input[@id='form-input-identity']
    input text  //input[@id='form-input-identity']  ${email}
    sleep  2
    click element  //button[@id='form-submit-continue']
    sleep  2
    close all browsers

