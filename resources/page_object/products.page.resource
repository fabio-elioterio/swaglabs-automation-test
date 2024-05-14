*** Settings ***
Resource            ../../settings/settings.resource
Resource            ../page_object/elements/products_elements.resource


*** Keywords ***
Verify If Products Title Is Visible
    Wait For Elements State            ${PRODUCTS_TITLE}
    ...                                visible