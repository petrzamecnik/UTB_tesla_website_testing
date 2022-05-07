*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  run_on_failure=Nothing
Resource    ${CURDIR}/urls.robot
Resource    ${CURDIR}/keywords.robot
Resource    ${CURDIR}/variables.robot
Resource    ${CURDIR}/clickable.robot

*** Variables ***
${btn_menu}  //span[normalize-space()='Menu']
${btn_models}  //span[normalize-space()='Model S']
${btn_model3}  //span[normalize-space()='Model 3']
${btn_modelx}  //span[normalize-space()='Model X']
${btn_modely}  //span[normalize-space()='Model Y']
${btn_solarroof}  //span[normalize-space()='Solar Roof']
${btn_solarpanels}  //span[normalize-space()='Solar Panels']
${btn_existinginventory}  //span[normalize-space()='Existing Inventory']
${btn_usedinventory}  //span[normalize-space()='Used Inventory']
${btn_tradein}  //span[normalize-space()='Trade-In']
${btn_testdrive}  //span[normalize-space()='Test Drive']
${btn_powerwall}  //span[normalize-space()='Powerwall']
${btn_commercialenergy}  //span[normalize-space()='Commercial Energy']
${btn_utilities}  //span[normalize-space()='Utilities']
${btn_charging}  //span[normalize-space()='Charging']
${btn_findus}  //span[normalize-space()='Find Us']
${btn_support}  //span[normalize-space()='Support']
${btn_investorrelations}  //span[normalize-space()='Investor Relations']
${btn_shop}  //span[normalize-space()='Shop']
${btn_account}  //span[normalize-space()='Account']



*** Test Cases ***
TC_001
    create webdriver  ${browser}
    check redirect  ${btn_models}  ${url_models}  ${url_root}
    close all browsers

TC_002
    create webdriver  ${browser}
    check redirect  ${btn_model3}  ${url_model3}  ${url_root}
    close all browsers


TC_003
    create webdriver  ${browser}
    check redirect  ${btn_modelx}  ${url_modelx}  ${url_root}
    close all browsers

TC_004
    create webdriver  ${browser}
    check redirect  ${btn_modely}  ${url_modely}  ${url_root}
    close all browsers

TC_005
    create webdriver  ${browser}
    check redirect  ${btn_solarroof}  ${url_solarroof}  ${url_root}
    close all browsers

TC_006
    create webdriver  ${browser}
    check redirect  ${btn_solarpanels}  ${url_solarpanels}  ${url_root}
    close all browsers

TC_007
    create webdriver  ${browser}
    check partial redirect  ${btn_existinginventory}  ${url_existinginventory}  ${url_root}
    close all browsers

TC_008
    create webdriver  ${browser}
    go to  ${url_root}
    wait and click  ${btn_menu}
    check partial redirect  ${btn_usedinventory}  ${url_usedinventory}
    close all browsers

TC_009
    create webdriver at  ${browser}  ${url_root}
    click then check redirect  ${btn_menu}  ${btn_tradein}  ${url_tradein}
    close all browsers


TC_010
    create webdriver at  ${browser}  ${url_root}
    click then check redirect  ${btn_menu}  ${btn_testdrive}  ${url_testdrive}
    close all browsers

TC_011
    create webdriver at  ${browser}  ${url_root}
    click then check redirect  ${btn_menu}  ${btn_powerwall}  ${url_powerwall}
    close all browsers

TC_012
    create webdriver at  ${browser}  ${url_root}
    click then check redirect  ${btn_menu}  ${btn_commercialenergy}  ${url_commercialenergy}
    close all browsers

TC_013
    create webdriver at  ${browser}  ${url_root}
    click then check redirect  ${btn_menu}  ${btn_utilities}  ${url_utilities}
    close all browsers

TC_014
    create webdriver at  ${browser}  ${url_root}
    click then check redirect  ${btn_menu}  ${btn_charging}  ${url_charging}
    close all browsers

TC_015
    create webdriver at  ${browser}  ${url_root}
    click then check partial redirect  ${btn_menu}  ${btn_findus}  ${url_findus}
    close all browsers

TC_016
    create webdriver at  ${browser}  ${url_root}
    click then check redirect  ${btn_menu}  ${btn_support}  ${url_support}
    close all browsers

TC_017
    create webdriver at  ${browser}  ${url_root}
    click then check partial redirect  ${btn_menu}  ${btn_investorrelations}  ${url_investorrelations}
    close all browsers

TC_018
    create webdriver at  ${browser}  ${url_root}
    check redirect  ${btn_shop}  ${url_shop}
    close all browsers

TC_019
    create webdriver at  ${browser}  ${url_root}
    check partial redirect  ${btn_account}  ${url_account}
    close all browsers



