*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  run_on_failure=Nothing
Resource    ${CURDIR}/urls.robot
Resource    ${CURDIR}/keywords.robot
Resource    ${CURDIR}/variables.robot
Resource    ${CURDIR}/clickable.robot

*** Variables ***
${search_input}  //input
${engineer_item}  //td[contains(text(),'Engineering')]

${select_jobcategory}  //div/aside/div/div[2]//select
${select_jobcategory_value}  //div/aside/div/div[2]//select//option[@value="13"]
${jobcategory_item}  //td[normalize-space()='Autopilot & Robotics']

${select_jobtype}  //div/aside/div/div[3]//select
${select_jobtype_value}  //div/aside/div/div[3]//select//option[@value="2"]
${jobtype_item}  //tbody/tr[1]/td[1]
${jobtype_confirmation}  //td[normalize-space()='Part-time']


${select_region}  //div/aside/div/div[4]//select
${select_region_value}  //div/aside/div/div[4]//select//option[@value="3"]
${region_item}  //tbody/tr[1]/td[1]/a

${select_location}  //div/aside/div/div[5]//select
${select_location_value}  //div/aside/div/div[5]//select//option[@value="DE"]
${location_item}  //tbody/tr[1]/td[1]/a
${location_confirmation}  

${select_city}  //div/aside/div/div[6]//select
${select_city_value}  //div/aside/div/div[6]//select//option[@value="Berlin"]
${city_item}  //tbody/tr[1]/td[1]
${city_confirmation}  //td[normalize-space()='Berlin, Berlin']

*** Test Cases ***
TC_001
    create webdriver  ${browser}
    set selenium speed  0.3s
    go to  ${url_careers_search_de}
    wait until element is visible  ${search_input}
    input text  ${search_input}  engineer  clear=true
    wait until element is visible  ${engineer_item}
    close all browsers

TC_002
    create webdriver  ${browser}
    set selenium speed  0.3s
    go to  ${url_careers_search_de}
    wait and click  ${select_jobcategory}
    wait and click  ${select_jobcategory_value}
    wait until element is visible  ${jobcategory_item}
    close all browsers

TC_003
    create webdriver  ${browser}
    set selenium speed  0.3s
    go to  ${url_careers_search_de}
    wait and click  ${select_jobtype}
    wait and click  ${select_jobtype_value}
    wait and click  ${jobtype_item}
    wait until element is visible  ${jobtype_confirmation}
    close all browsers
    
TC_004
    create webdriver  ${browser}
    set selenium speed  0.3s
    go to  ${url_careers_search_de}
    wait and click  ${select_region}
    wait and click  ${select_region_value}
    wait and click  ${region_item}
    capture page screenshot
    close all browsers

TC_005
    create webdriver  ${browser}
    set selenium speed  0.3s
    go to  ${url_careers_search}
    wait and click  ${select_location}
    wait and click  ${select_location_value}
    wait and click  ${location_item}
    capture page screenshot
    close all browsers

TC_006
    create webdriver  ${browser}
    set selenium speed  0.3
    go to  ${url_careers_search_de}
    wait and click  ${select_city}
    wait and click  ${select_city_value}
    wait and click  ${city_item}
    wait until element is visible  ${city_confirmation}
    close all browsers

    