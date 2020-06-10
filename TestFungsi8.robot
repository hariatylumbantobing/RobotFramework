*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Checkout
    ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
    ${driver}=    Create Webdriver    Chrome    options=${options}
    Go to    http://automationpractice.com/index.php?controller=authentication&back=my-account
    Set Selenium Implicit Wait    5
    Sleep    2
    maximize browser window
    Sleep    5
    Input Text    //*[@id="email"]    hariatytobing@gmail.com
    Input Text    //*[@id="passwd"]    Oktober98
    Click Element    //*[@id="SubmitLogin"]
    Sleep    5
    Click Element    //*[@id="header_logo"]/a/img
    Sleep    5
    Click Element    //*[@id="homefeatured"]/li[2]/div/div[2]/div[2]/a[1]
    Sleep    5
    Click Element    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
    Sleep    5
    Mouse Over    //*[@id="header"]/div[3]/div/div/div[3]/div/a
    Click Element    //*[@id="button_order_cart"]
    Sleep    5
    Click Element    //*[@id="center_column"]/p[2]/a[1]
    Select Checkbox    //*[@id="addressesAreEquals"]
    Sleep    5
    Click Element    //*[@id="center_column"]/form/p/button
    Select Checkbox    //*[@id="cgv"]
    Click Element    //*[@id="form"]/p/button
    Click Element    //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
    Sleep    5
    Click Element    //*[@id="cart_navigation"]/button
    Set Selenium Implicit Wait    15
    Log    Test Completed