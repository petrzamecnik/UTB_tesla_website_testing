*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  run_on_failure=Nothing
Resource    ${CURDIR}/urls.robot
Resource    ${CURDIR}/keywords.robot
Resource    ${CURDIR}/variables.robot
Resource    ${CURDIR}/clickable.robot

*** Variables ***
${models_image}  //img[@alt='Model S']
${models_select}  //div[@data-selected-vehicle='Model S']/select

${modely_image}  //img[@alt='Model Y']
${modely_select}  //div[@data-selected-vehicle='Model Y']/select

${btn_add_model}  //span[contains(text(),"Add Model")]
${btn_remove_model}  //*[name()='path' and contains(@fill,'#FFFFFF')]
${btn_see_more}  //button[@id="trigger-checkbox-microcopy"]/span[contains(text(), "See More")]
${btn_see_less}  //button[@id="trigger-checkbox-microcopy"]/span[contains(text(), "See Less")]

${text_acceleration}  //span[contains(text(), "Acceleration")]
${text_topspeed}  //span[contains(text(), "Top Speed")]
${any_image}  //img

*** Test Cases ***
TC_001
    create webdriver  ${browser}
    go to  ${url_compare}
    check if element is in view  ${models_image}
    close all browsers

TC_002
    create webdriver  ${browser}
    go to  ${url_compare}
    check if element is in view  ${modely_image}
    close all browsers


TC_003
    create webdriver  ${browser}
    go to  ${url_compare}
    wait and click  ${models_select}
    close all browsers

TC_004
    create webdriver  ${browser}
    go to  ${url_compare}
    wait and click  ${modely_select}
    close all browsers

TC_005
    create webdriver  ${browser}
    go to  ${url_compare}
    wait and click  ${btn_add_model}
    check if there are n matching elements  ${any_image}  3
    close all browsers

TC_006
    create webdriver  ${browser}
    go to  ${url_compare}
    set selenium speed  0.3s
    wait and click  ${btn_add_model}
    check if there are n matching elements  ${any_image}  3
    mouse over  ${modely_image}
    wait and click  ${btn_remove_model}
    check if there are n matching elements  ${any_image}  2
    close all browsers

TC_007
    create webdriver  ${browser}
    go to  ${url_compare}
    scroll to element  ${btn_see_more}
    wait and click  ${btn_see_more}
    page should contain element  ${text_acceleration}
    page should contain element  ${text_topspeed}
    close all browsers

    
