*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Variables ***
${url}            http://webdev.xerago.com/cvm
${browser}        firefox
${control_val}    15
${Program_title}    Program for Cross-sell Savings Accounts Volatile account balances
${Creator_status_rej}    Rejected
${Creator_status_apprv}    Approved
${Creator_status_abrt}    Aborted
${alert_txt}      Program already exists for the given period

*** Test Cases ***
To create a new campaign
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Maximize Browser Window
    Set Selenium Implicit Wait    60s
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    SeleniumLibrary.Input Text    id=form_username    testpurpose
    SeleniumLibrary.Input Text    id=form_password    testpurpose
    SeleniumLibrary.Click Button    id=form_login
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//li[@ng-click='createNewProgram()']
    SeleniumLibrary.Click Element    xpath=.//li[@ng-click='createNewProgram()']
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//div[@id='productName'][contains(.,'Savings Accounts')]
    SeleniumLibrary.Click Element    xpath=.//div[@id='productName'][contains(.,'Savings Accounts')]
    SeleniumLibrary.Click Element    xpath=.//div[@class='objectivelist']/div[contains(.,'Cross-sell')]
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//div[@class='approach-head']/div[contains(.,'Volatile account balances')]    40s
    SeleniumLibrary.Click Element    xpath=.//div[@class='approach-head']/div[contains(.,'Volatile account balances')]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=(.//table[@class='ui-datepicker-calendar']/tbody/tr/td[contains(.,'3')])[1]
    SeleniumLibrary.Click Element    xpath=.//input[@name='saveChanges']
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//a[@title='Check Count']
    SeleniumLibrary.Click Element    xpath=.//a[@title='Check Count']
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//div[@ng-show='showRecordCount']
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//div[@ng-repeat='collection in productPercentage'][2]
    SeleniumLibrary.Click Element    xpath=.//div[@ng-repeat='collection in productPercentage'][2]
    SeleniumLibrary.Click Element    xpath=.//a[@title='Save and Proceed']
    SeleniumLibrary.Click Element    xpath=(.//div[@class='btn-group fg col-sm-8']/label)[1]
    SeleniumLibrary.Click Element    xpath=.//table[@class='ds-table']/tbody/tr/td[15]/div
    SeleniumLibrary.Click Element    xpath=(.//table[@class='ds-table']/tbody/tr/td[15]/div/following-sibling::ul/li/label)[1]
    SeleniumLibrary.Click Element    xpath=(.//table[@class='ds-table']/tbody/tr/td[15]/div/following-sibling::ul/li/label)[3]
    SeleniumLibrary.Click Button    xpath=.//button[@title='Next']
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    SeleniumLibrary.Click Element    xpath=.//input[@title='Save & Proceed']
    SeleniumLibrary.Click Element    xpath=.//p[@class='sdnptop pfontsize ng-binding']
    SeleniumLibrary.Click Element    xpath=.//div[@class='col-sm-12 sdnmaincontainerforsavedtemplate']/div/div[@class='col-sm-4 ng-scope'][1]
    SeleniumLibrary.Mouse Over    xpath=.//div[@class='templatepopcombo']/div[@class='Emailer']
    SeleniumLibrary.Click Element    xpath=.//div[@class='templatepopcombo']/div[@class='Emailer']
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//button[@ng-click='channelselectfornext()']
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='channelselectfornext()']
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//button[@title='Save and Continue']    30s
    SeleniumLibrary.Click Element    xpath=.//button[@title='Save and Continue']
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//p[@class='paddingSummary updatedsummary']    40s
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='approval()']
    SeleniumLibrary.Close Browser

Review and Approve a campaign
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Set Window Size    1366    768
    Set Selenium Implicit Wait    40s
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    SeleniumLibrary.Input Text    id=form_username    reviewers
    SeleniumLibrary.Input Text    id=form_password    reviewers@123
    SeleniumLibrary.Click Button    id=form_login
    SeleniumLibrary.Click Element    xpath=(.//*[contains(@class,'cname') and contains(text(),'Program for Cross-sell Savings Accounts Volatile account balances')]/parent::*/parent::*/parent::*//*[@ng-click='conApproveCamp(x)'])[1]
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='approveProgram(0)']
    SeleniumLibrary.Click Element    xpath=(.//button[@title='Ok'])[2]
    SeleniumLibrary.Click Element    xpath=(.//*[contains(@class,'cname') and contains(text(),'Program for Cross-sell Savings Accounts Volatile account balances')]/parent::*/parent::*/parent::*//*[@ng-click='comApproveCamp(x)'])[1]
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='approveProgramCom(0)']
    SeleniumLibrary.Click Element    xpath=(.//button[@title='Ok'])[2]
    SeleniumLibrary.Close Browser
