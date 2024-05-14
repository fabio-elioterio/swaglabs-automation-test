*** Settings ***
Documentation        Login Test
Metadata             Version    0.1
Metadata             OS         Windows, Linux & Mac

Resource             ../resources/page_object/login_page.resource
Resource             ../resources/page_object/products.page.resource
Test Setup           Go To Swag Labs Home Page
Test Teardown        Finish Browser


*** Test Cases ***
CT01 - Login Successful
    [Documentation]                Test that verify if the login was succesful
    ...                            using a valid username and password

    Insert Username                ${VALID_USERNAME}
    Insert Password                ${VALID_PASSWORD}
    Click On The Login Button

    Verify If Products Title Is Visible        
