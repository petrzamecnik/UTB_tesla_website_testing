*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  run_on_failure=Nothing
Resource    ${CURDIR}/urls.robot
Resource    ${CURDIR}/keywords.robot
Resource    ${CURDIR}/variables.robot
Resource    ${CURDIR}/clickable.robot

*** Variables ***
${btn_models}  //span[normalize-space()='Model S']
${btn_model3}  //span[normalize-space()='Model 3']
${btn_modelx}  //span[normalize-space()='Model X']
${btn_modely}  //span[normalize-space()='Model Y']
${btn_solarroof}  //span[normalize-space()='Solar Roof']
${btn_solarpanels}  //span[normalize-space()='Solar Panels']
${btn_existinginventory}  //span[normalize-space()='Existing Inventory']



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




# TC_007 - kontrola zda se po kliknutí na odkaz "Existing Inventory" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Existing Inventory']
#     close all browsers



# TC_008 - kontrola zda se po kliknutí na odkaz "Used Inventory" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Menu']
#     click element   //span[normalize-space()='Used Inventory']
#     close all browsers


# TC_009 - kontrola zda se po kliknutí na odkaz "Trade-In" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Menu']
#     click element   //span[normalize-space()='Trade-In']
#     close all browsers


# TC_010 - kontrola zda se po kliknutí na odkaz "Test Drive" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Menu']
#     click element   //span[normalize-space()='Test Drive']
#     close all browsers


# TC_011 - kontrola zda se po kliknutí na odkaz "Powerwall" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Menu']
#     click element   //span[normalize-space()='Powerwall']
#     close all browsers


# TC_012 - kontrola zda se po kliknutí na odkaz "Commercial Energy" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Menu']
#     click element   //span[normalize-space()='Commercial Energy']
#     close all browsers


# TC_013 - kontrola zda se po kliknutí na odkaz "Utilities" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Menu']
#     click element   //span[normalize-space()='Utilities']
#     close all browsers


# TC_014 - kontrola zda se po kliknutí na odkaz "Charging" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Menu']
#     click element   //span[normalize-space()='Charging']
#     close all browsers


# TC_015 - kontrola zda se po kliknutí na odkaz "Find Us" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Menu']
#     click element   //span[normalize-space()='Find Us']
#     close all browsers


# TC_016 - kontrola zda se po kliknutí na odkaz "Support" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Menu']
#     click element   //span[normalize-space()='Support']
#     close all browsers


# TC_017 - kontrola zda se po kliknutí na odkaz "Investor Relations" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Menu']
#     click element   //span[normalize-space()='Investor Relations']
#     close all browsers



# TC_018 - kontrola zda se po kliknutí na odkaz "Shop" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Shop']
#     close all browsers


# TC_019 - kontrola zda se po kliknutí na odkaz "Account" otevře správná stránka
#     set selenium speed  0.1
#     create webdriver    ${ProhlizecChrome}
#     go to   ${url}
#     click element   //span[normalize-space()='Account']
#     close all browsers


# TC_020 - test



