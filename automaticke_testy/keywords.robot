*** Settings ***
Library  SeleniumLibrary
Resource    ${CURDIR}/urls.robot
Resource    ${CURDIR}/keywords.robot
Resource    ${CURDIR}/variables.robot
Resource    ${CURDIR}/clickable.robot

*** Keywords ***
scroll to element
    [Arguments]  ${locator}
    ${x}=  Get Horizontal Position  ${locator}
    ${y}=  Get Vertical Position  ${locator}
    execute javascript  window.scrollTo(${x}, ${y})

# click middle of element
#     [Arguments]  ${locator}
#     ${x_pos}=  Get Horizontal Position  ${locator}
#     ${y_pos}=  Get Vertical Position  ${locator} 
#     ${el_width}=  Get CSS Property Value  ${locator}  width
#     ${el_height}=  Get CSS Property Value  ${locator}  heigth
#     ${x_target}=  Evaluate  ${x_pos}-${el_width}
#     ${y_target}=  Evaluate  ${y_pos}-${el_height}


wait and click
    [Arguments]  ${locator}
    wait until element is visible  ${locator}
    click element  ${locator}

check if element is in view
    [Arguments]  ${locator}
    wait until element is visible  ${locator}
    page should contain element  ${locator}

check redirect
    [Arguments]  @{args}
    [Documentation]  takes 2 or 3 arguments (locator, expected url, starting url <-- optional)
    ${count}=  get length  ${args}
    ${locator}=  set variable  ${args}[0]
    ${expected_url}=  set variable  ${args}[1]

    IF  ${count} == 3
        ${starting_url}=  set variable  ${args}[2]
        go to  ${starting_url}
    END

    set selenium speed  0.3s
    scroll to element  ${locator}
    wait and click  ${locator}
    location should be  ${expected_url}

check partial redirect
    [Arguments]  @{args}
    [Documentation]  takes 2 or 3 arguments (locator, expected url, starting url <-- optional)
    ${count}=  get length  ${args}
    ${locator}=  set variable  ${args}[0]
    ${expected_url}=  set variable  ${args}[1]

    IF  ${count} == 3
        ${starting_url}=  set variable  ${args}[2]
        go to  ${starting_url}
    END

    set selenium speed  0.3s
    scroll to element  ${locator}
    wait and click  ${locator}
    location should contain  ${expected_url}

check if there are n matching elements
    [Arguments]  ${locator}  ${n}
    ${number}=  convert to integer  ${n}
    ${count}=  get element count  ${locator}
    should be equal  ${number}  ${count}
