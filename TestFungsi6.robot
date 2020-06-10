*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
CatalogPagesSendtoFriend
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
    Set Selenium Implicit Wait    5
    Click Element    //*[@id="header_logo"]/a/img
    Click Element    xpath=//*[@id="homefeatured"]/li[3]/div/div[2]/div[2]/a[2]
    Sleep    5
    Click Element    //*[@id="send_friend_button"]
    Sleep    5
    Input Text    //*[@id="friend_name"]    xxxuhsuh
    Input Text    //*[@id="friend_email"]    xxuhsuh@okeoke.com
    Click Element    //*[@id="sendEmail"]
    Set Selenium Implicit Wait    15
    Log    Test Completed
   