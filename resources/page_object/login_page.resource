*** Settings ***
Resource            ../../settings/settings.resource
Resource            ../page_object/elements/login_elements.resource


*** Keywords ***
Insert Username
    [Arguments]              ${username}

    Fill Text                ${IP_USERNAME}
    ...                      ${username}

Insert Password
    [Arguments]              ${password}

    Fill Secret              ${IP_PASSWORD}
    ...                      $password

Click On The Login Button
    Click                    ${BT_LOGIN}