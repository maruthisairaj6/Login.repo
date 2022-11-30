*** Settings ***
Documentation       Login to the healt track application
Library    RPA.Browser.Selenium


*** Tasks ***
Open browser and login to the application
    login
    
*** Keywords ***
login
    Open Available Browser    https://qa.healthtrackrx.com/qa/
    Input Text    //input[@data-shortname='username']    prakash.kamma@qualizeal.com
    Input Password    //input[@data-shortname='password']    HTRXqz@123
    Click Element    xpath://div[text()='Sign in']/parent::div
    Wait Until Element Is Visible    //img[@alt='LimsABC. When You Need Results']