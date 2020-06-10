*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Search
    ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
    ${driver}=    Create Webdriver    Chrome    options=${options}
    Go to    http://automationpractice.com/index.php?controller=authentication&back=my-account
    Set Selenium Implicit Wait    5
    Sleep    2
    maximize browser window
    Sleep    5
    Input Text    xpath=//*[@id="search_query_top"]    12345
    Press Keys    xpath=//*[@id="searchbox"]/button    RETURN
    Set Selenium Implicit Wait    15
    Log    Test Completed