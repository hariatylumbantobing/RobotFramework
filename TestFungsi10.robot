*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
AddWishlist
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
    Click Element    //*[@id="homefeatured"]/li[1]/div/div[2]/div[2]/a[2]
    Sleep    5
    Click Element    //*[@id="buy_block"]/div/div[3]/p
    Sleep    5
    Click Element    //*[@id="wishlist_button"]
    Sleep    5
    Click Element    //*[@id="product"]/div[2]/div/div/a
    Click Element    //*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Click Element    //*[@id="center_column"]/div/div[2]/ul/li/a
    Click Element    xpath=//*[@id="wishlist_15237"]/td[5]/a
    Set Selenium Implicit Wait    15
    Log    Test Completed