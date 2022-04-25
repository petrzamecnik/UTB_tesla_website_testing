*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  run_on_failure=Nothing
Resource    ${CURDIR}/urls.robot
Resource    ${CURDIR}/keywords.robot
Resource    ${CURDIR}/variables.robot
Resource    ${CURDIR}/clickable.robot

*** Variables ***
${btn_order_now}  //span[text()="Order Now"]
${btn_compare}  //span[text()="Compare"]
${btn_model_s}  
${btn_model_s_plaid}  
${url_models_order}  https://www.tesla.com/models/design#overview
${url_models_compare}  https://www.tesla.com/compare
${text_interior_of_the_future}  //h2[text()="Interior of the Future"]
${section_powertrain}  //*[@id="tesla-powertrain-v2-298"]/section/section[2]/section/section

*** Test Cases ***
TC_001
    create webdriver  ${browser}
    go to  ${url_models}
    wait until element is visible  ${btn_order_now}
    click element  ${btn_order_now} 
    location ghould be  ${url_models_order}

TC_002
    create webdriver  ${browser}
    go to  ${url_models}
    # scroll element into view  ${btn_compare}
    Execute Javascript  window.scrollTo(0, document.body.scrollHeight);
    sleep  2
    Execute Javascript  window.scrollTo(0, document.body.scrollHeight);
    scroll element into view  ${btn_compare}
    wait until element is visible  ${btn_compare}
    click element  ${btn_compare}
    location should be  ${url_models_compare}
    close all browsers

TC_003
    create webdriver  ${browser}
    go to  ${url_models}
    scroll element into view  ${text_interior_of_the_future}
    wait until element is visible  ${text_interior_of_the_future}
    close all browsers

TC_004
    create webdriver  ${browser}
    go to  ${url_models}
    close all browsers

TC_005
    create webdriver  ${browser}
    go to  ${url_models}
    close all browsers

TC_006
    create webdriver  ${browser}
    go to  ${url_models}
    close all browsers

TC_007
    create webdriver  ${browser}
    go to  ${url_models}
    wait until element is visible  ${tsla_logo}
    click element  ${tsla_logo}
    location should be  ${url_root}
    close all browsers


