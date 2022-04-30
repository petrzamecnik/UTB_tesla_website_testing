*** Settings ***
Library  SeleniumLibrary


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