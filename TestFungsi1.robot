*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
SignUp
    Open Browser    http://automationpractice.com/index.php    chrome
    Set Selenium Implicit Wait    5
    Sleep    2
    maximize browser window
    Click Element    //*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Sleep    3
    Input Text    //*[@id="email_create"]    hariatytobing@gmail.com
    Sleep    5
    Click Element    //*[@id="SubmitCreate"]
    Sleep    5
    Set Selenium Implicit Wait    15
    Select Radio Button    id_gender    2
    Input Text    //*[@id="customer_firstname"]    Hariaty
    Input Text    //*[@id="customer_lastname"]    Lumbantobing
    Input Text    //*[@id="passwd"]    Oktober98
    Select From List by Index    id=days    4
    Select From List by Index    id=months    9
    Select From List by Index    id=years    22
    Input Text    //*[@id="firstname"]    Hariaty
    Input Text    //*[@id="lastname"]    Lumbantobing
    Input Text    //*[@id="address1"]    Gurilla Street,29 Medan
    Input Text    //*[@id="city"]    Medan
    Select From List by Index    id=id_state    4
    Input Text    //*[@id="postcode"]    20233
    Select From List by Index    id=id_country    1
    Input Text    //*[@id="phone_mobile"]    082284546418
    Click Element    //*[@id="submitAccount"]
    Log    Test Completed