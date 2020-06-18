*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Variables ***
${url}            http://webtest.xerago.com/cvm
${browser}        chrome

*** Test Cases ***
Create campaign from marketing module
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    CreatorAdmincreator
    SeleniumLibrary.Input Text    id=form_password    CreatorAdmin123
    SeleniumLibrary.Click Button    id=form_login
    Sleep    40s
    SeleniumLibrary.Click Element    xpath=(.//span[@class='admin-box'])[1]
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//label[@id='dsnException']
    Sleep    10s
    SeleniumLibrary.Click Element    xpath=(.//div[@class='btn-group fg col-sm-8']/label)[1]
    Sleep    10s
    SeleniumLibrary.Click Element    xpath=.//table[@class='ds-table resterorchestration']/tbody/tr/td[17]/div
    Sleep    15s
    SeleniumLibrary.Click Element    xpath=.//table[@class='ds-table resterorchestration']/tbody/tr/td[17]//ul/li[1]
    Sleep    10s
    SeleniumLibrary.Click Element    xpath=.//table[@class='ds-table resterorchestration']/tbody/tr/td[17]//ul/li[3]
    Sleep    10s
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    SeleniumLibrary.Click Element    xpath=.//a[@data-ng-click='validationClick1()']
    Sleep    15s
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='validationClick()']
    Sleep    25s
    SeleniumLibrary.Click Element    xpath=(.//span[@class='admin-box'])[2]
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//div[@class='accordion-heading headeraccord']/a[contains(.,'Home Loans')]
    Sleep    15s
    SeleniumLibrary.Click Element    xpath=.//div/a[contains(.,'Home Loans')]/parent::div/following-sibling::div/div/div/div/div/ul/li/span[contains(.,'Cross-sell')]
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//div/a[contains(.,'Home Loans')]/parent::div/following-sibling::div/div/div/div/div/ul/li/span[contains(.,'Cross-sell')]/following-sibling::div//ul[@class='persona-ul']/li[contains(.,'Customers with multiple products')]    30s
    SeleniumLibrary.Click Element    xpath=.//div/a[contains(.,'Home Loans')]/parent::div/following-sibling::div/div/div/div/div/ul/li/span[contains(.,'Cross-sell')]/following-sibling::div//ul[@class='persona-ul']/li[contains(.,'Customers with multiple products')]
    Sleep    25s
    SeleniumLibrary.Click Element    xpath=.//ul/li[@class='bxslider2']/div[1]/div/div[1]/div
    Sleep    15s
    SeleniumLibrary.Click Element    xpath=.//input[@title='Save']
    Sleep    15s
    SeleniumLibrary.Click Element    xpath=.//p[@class='sdnptop pfontsize ng-binding']
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//div[@class='col-sm-12 sdnmaincontainerforsavedtemplate']/div/div[@class='col-sm-4 ng-scope'][1]
    Sleep    20s
    SeleniumLibrary.Mouse Over    xpath=.//div[@class='Emailer']
    Sleep    10s
    SeleniumLibrary.Click Element    xpath=.//div[@ng-click='previewedited()']
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='channelselectfornext()']
    Sleep    10s
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='saveData(processSaveData);']
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//div[@class='btn-group viewswitch btn-toggle']//button[contains(.,'Yes')]
    Sleep    10s
    SeleniumLibrary.Input Text    xpath=.//textarea[@ng-model='mc_Approve_reject_comments']    testing purpose
    SeleniumLibrary.Click Element    xpath=.//button[@type='button'][contains(.,'Submit')]
    SeleniumLibrary.Close Browser
	
Approve from creator head
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    CreatorAdmincreator
    SeleniumLibrary.Input Text    id=form_password    CreatorAdmin123
    SeleniumLibrary.Click Button    id=form_login
    Sleep    40s
    SeleniumLibrary.Click Element    xpath=(.//span[@class='admin-box'])[2]
    Sleep    20s
    SeleniumLibrary.Close Browser
	
Review and Approve a campaign
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    SeleniumLibrary.Input Text    id=form_username    reviewers
    SeleniumLibrary.Input Text    id=form_password    reviewers@123
    SeleniumLibrary.Click Button    id=form_login
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=(.//*[contains(@class,'cname') and contains(text(),'Program for Cross-sell Savings Accounts Volatile account balances')]/parent::*/parent::*/parent::*//*[@ng-click='conApproveCamp(x)'])[1]
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='approveProgram(0)']
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=(.//button[@title='Ok'])[2]
    SeleniumLibrary.Click Element    xpath=(.//*[contains(@class,'cname') and contains(text(),'Program for Cross-sell Savings Accounts Volatile account balances')]/parent::*/parent::*/parent::*//*[@ng-click='comApproveCamp(x)'])[1]
    Sleep    15s
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='approveProgramCom(0)']
    Sleep    10s
    SeleniumLibrary.Click Element    xpath=(.//button[@title='Ok'])[2]
    SeleniumLibrary.Close Browser
