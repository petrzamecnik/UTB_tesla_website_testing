*** Settings ***
Documentation    Testování navigace na webu pomocí odkazů.
Library  SeleniumLibrary  run_on_failure=Nothing


*** Variables ***
${ProhlizecChrome}  Chrome
${url}  https://www.tesla.com


# Open Browser ${url} ${prohlizec}
# browsers, urls, xpaths(btns, inputs...), values

*** Test Cases ***
TC_001 - kontrola zda se po kliknutí na odkaz "Model S" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Model S']
    close all browsers


TC_002 - kontrola zda se po kliknutí na odkaz "Model 3" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Model 3']
    close all browsers


TC_003 - kontrola zda se po kliknutí na odkaz "Model X" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Model X']
    close all browsers


TC_005 - kontrola zda se po kliknutí na odkaz "Solar Roof" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Solar Roof']
    close all browsers


TC_006 - kontrola zda se po kliknutí na odkaz "Solar Panels" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Solar Panels']
    close all browsers


TC_007 - kontrola zda se po kliknutí na odkaz "Existing Inventory" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Existing Inventory']
    close all browsers



TC_008 - kontrola zda se po kliknutí na odkaz "Used Inventory" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Menu']
    click element   //span[normalize-space()='Used Inventory']
    close all browsers


TC_009 - kontrola zda se po kliknutí na odkaz "Trade-In" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Menu']
    click element   //span[normalize-space()='Trade-In']
    close all browsers


TC_010 - kontrola zda se po kliknutí na odkaz "Test Drive" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Menu']
    click element   //span[normalize-space()='Test Drive']
    close all browsers


TC_011 - kontrola zda se po kliknutí na odkaz "Powerwall" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Menu']
    click element   //span[normalize-space()='Powerwall']
    close all browsers


TC_012 - kontrola zda se po kliknutí na odkaz "Commercial Energy" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Menu']
    click element   //span[normalize-space()='Commercial Energy']
    close all browsers


TC_013 - kontrola zda se po kliknutí na odkaz "Utilities" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Menu']
    click element   //span[normalize-space()='Utilities']
    close all browsers


TC_014 - kontrola zda se po kliknutí na odkaz "Charging" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Menu']
    click element   //span[normalize-space()='Charging']
    close all browsers


TC_015 - kontrola zda se po kliknutí na odkaz "Find Us" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Menu']
    click element   //span[normalize-space()='Find Us']
    close all browsers


TC_016 - kontrola zda se po kliknutí na odkaz "Support" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Menu']
    click element   //span[normalize-space()='Support']
    close all browsers


TC_017 - kontrola zda se po kliknutí na odkaz "Investor Relations" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Menu']
    click element   //span[normalize-space()='Investor Relations']
    close all browsers



TC_018 - kontrola zda se po kliknutí na odkaz "Shop" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Shop']
    close all browsers


TC_019 - kontrola zda se po kliknutí na odkaz "Account" otevře správná stránka
    set selenium speed  0.1
    create webdriver    ${ProhlizecChrome}
    go to   ${url}
    click element   //span[normalize-space()='Account']
    close all browsers


TC_020 - test



