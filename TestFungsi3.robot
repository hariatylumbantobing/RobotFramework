*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
EditQuantity
    ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
    ${driver}=    Create Webdriver    Chrome    options=${options}
    Go to    http://automationpractice.com/index.php?id_product=1&controller=product#/size-s/color-orange
    Set Selenium Implicit Wait    5
    Sleep    2
    maximize browser window
    Sleep    5
    Input Text    //*[@id="quantity_wanted"]    3
    Press Keys    xpath=//*[@id="quantity_wanted"]    RETURN
    Set Selenium Implicit Wait    15
    Log    Test Completed