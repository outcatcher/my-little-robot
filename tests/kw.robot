*** Keywords ***
Login As
    [Arguments]  ${username}  ${password}
    Go To  ${BASE_URL}/login
    Input Text      id:username    ${username}
    Input Password  id:password  ${password}
    Click Button    css:button.radius
    [Return]  Get Location
