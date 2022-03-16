*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  run_on_failure=Nothing
Resource    urls.robot

*** Variables ***
${ProhlizecChrome}  Chrome
${email}    petrz.zamecnik@seznam.cz
${passwd}   testThisTesla1234


# Open Browser ${url} ${prohlizec}
# browsers, urls, xpaths(btns, inputs...), values

*** Test Cases ***
TC_001
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url_root}
    close all browsers