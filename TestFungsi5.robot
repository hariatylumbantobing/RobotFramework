*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ChangePassword
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
    Set Selenium Implicit Wait    15
    Click Element    //*[@id="center_column"]/div/div[1]/ul/li[4]/a
    Input Text    //*[@id="old_passwd"]    fiaodjwadowqp
    Input Text    //*[@id="passwd"]    newnewnew
    Input Text    //*[@id="confirmation"]    newnewnew
    Click Element    //*[@id="center_column"]/div/form/fieldset/div[11]/button
    Set Selenium Implicit Wait    15
    Log    Test Completed