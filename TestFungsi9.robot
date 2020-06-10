*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
AddAddress
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
    Click Element    //*[@id="center_column"]/div/div[1]/ul/li[3]/a
    Click Element    //*[@id="center_column"]/div[2]/a
    Input Text    //*[@id="address1"]    ITDEL, SM RAJA
    Input Text    //*[@id="city"]    Laguboti IT Del
    Select From List by Index    id=id_state    1
    Input Text    //*[@id="postcode"]    20318
    Select From List by Index    id=id_country    0
    Input Text    //*[@id="phone"]    0614551710
    Input Text    //*[@id="alias"]    My Campus
    Click Element    //*[@id="submitAddress"]
    Set Selenium Implicit Wait    15
    Log    Test Completed