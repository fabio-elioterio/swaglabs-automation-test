*** Settings ***
Library        Browser
Resource       ../resources/data_test/swag_users.resource

*** Variables ***
${BASE_URL}            https://www.saucedemo.com/
${BROWSER}             chromium
${IS_HEADLESS}         False


*** Keywords ***
Go To Swag Labs Home Page
    New Browser              browser=${BROWSER}
    ...                      headless=${IS_HEADLESS}
    New Page                 ${BASE_URL}

Finish Browser
    Take Screenshot          fullPage=True
    ...                      filename=${TEST_NAME}
    Close Browser