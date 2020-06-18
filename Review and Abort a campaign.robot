*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            http://webtest.xerago.com/cvm
${browser}        firefox

*** Test Cases ***
Review_and_Abort_a_campaign
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    SeleniumLibrary.Input Text    id=form_username    reviewers
    SeleniumLibrary.Input Text    id=form_password    reviewers@123
    SeleniumLibrary.Click Button    id=form_login
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=(.//*[contains(@class,'cname') and contains(text(),'Program for Cross-sell Savings Accounts Volatile account balances')]/parent::*/parent::*/parent::*//*[@class='sprite-globe iconabort'])[1]
    SeleniumLibrary.Input Text    xpath=.//*[@id='rejectReasonCamp']    test
    SeleniumLibrary.Click Element    xpath=.//*[@ng-click='abortProgram(abortValue,rejectReasonCamp)']
    Sleep    10s
    SeleniumLibrary.Click Element    xpath=.//*[@title='Abort']
    Sleep    10s
    SeleniumLibrary.Click Element    xpath=(.//*[@title='Ok'])[3]
    SeleniumLibrary.Close Browser
