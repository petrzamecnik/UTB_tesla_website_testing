*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  run_on_failure=Nothing
Resource    ${CURDIR}/urls.robot
Resource    ${CURDIR}/keywords.robot
Resource    ${CURDIR}/variables.robot
Resource    ${CURDIR}/clickable.robot

*** Variables ***
${link_see_op_manufacturing}  //a[@href='/manufacturing']//span[contains(text(),'See Opportunities')]
${link_see_op_cellteam}  //a[@href='/cell-jobs']//span[contains(text(),'See Opportunities')]
${link_see_op_autopilot}  //a[@href='/ai']//span[contains(text(),'See Opportunities')]
${btn_view_jobs}  //div[contains(@class,'tcl-section-header-group__buttons-desktop')]//span[contains(text(),'View Jobs')]
${btn_view_internships}  //div[contains(@class,'tcl-section-header-group__buttons-desktop')]//span[contains(text(),'View Internships')]


*** Test Cases ***
TC_001
    create webdriver  ${browser}
    check redirect  ${link_see_op_manufacturing}  ${url_manufacturing}  ${url_careers}
    close all browsers
    
TC_002
    create webdriver  ${browser}
    check redirect  ${link_see_op_cellteam}  ${url_cellteam}  ${url_careers}
    close all browsers

TC_003
    create webdriver  ${browser}
    check redirect  ${link_see_op_autopilot}  ${url_ai}  ${url_careers}
    close all browsers

TC_004
    create webdriver  ${browser}
    go to  ${url_careers}
    check redirect  ${btn_view_jobs}  ${url_careers_search_cz}
    close all browsers

TC_005
    create webdriver  ${browser}
    go to  ${url_careers}
    check redirect  ${btn_view_internships}  ${url_careers_internships}
    close all browsers

