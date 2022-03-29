*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  run_on_failure=Nothing
Library  Process

Resource    ${CURDIR}/urls.robot
Resource    ${CURDIR}/keywords.robot
Resource    ${CURDIR}/variables.robot

# Open Browser ${url} ${prohlizec}
# browsers, urls, xpaths(btns, inputs...), values

*** Test Cases ***
TC_001
    create webdriver  ${browser}
    go to  ${url_register}
    ${captcha}=  run process  python  ../readCaptcha.py  ${url_root}
#    log to console  ${captcha}
    log to console  ${captcha}
    sleep  2
    close all browsers
