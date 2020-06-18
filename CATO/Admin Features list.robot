*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Variables ***
${url}            http://webdev.xerago.com/cvm
${browser}        chrome
${firstname}      FirstNameAutoTest
${lastname}       LastNameAutoTest
${email_id}       Email@AutoTest.com
${username}       Logeshwari
${pwd}            Logimohan
${count_val}      1000

*** Test Cases ***
Create user in admin page
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    SeleniumLibrary.Input Text    id=form_username    admins
    SeleniumLibrary.Input Text    id=form_password    admins@123
    SeleniumLibrary.Click Button    id=form_login
    Sleep    15s
    SeleniumLibrary.Mouse Over    id=settingsName
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//*[@title='User Management']    20s
    SeleniumLibrary.Click Element    xpath=.//*[@title='User Management']
    Sleep    15s
    SeleniumLibrary.Click Element    id=createuser
    Sleep    10s
    SeleniumLibrary.Input Text    xpath=.//*[@name='username']    ${firstname}
    SeleniumLibrary.Input Text    xpath=.//*[@name='username1']    ${lastname}
    SeleniumLibrary.Input Text    xpath=.//*[@id='email']    ${email_id}
    SeleniumLibrary.Input Text    xpath=.//*[@id='userName']    ${username}
    SeleniumLibrary.Input Text    xpath=.//*[@id='user_password']    ${pwd}
    SeleniumLibrary.Input Text    xpath=.//*[@id='cPassword']    ${pwd}
    SeleniumLibrary.Click Element    xpath=.//*[@id='user']/div[9]/div/div/div[2]/div/button[contains(text(),'Save')]
    SeleniumLibrary.Close Browser

Check new user creation
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub   
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    SeleniumLibrary.Input Text    id=form_username    ${username}
    SeleniumLibrary.Input Text    id=form_password    ${pwd}
    SeleniumLibrary.Click Button    id=form_login
    Sleep    15s
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//img[@data-ng-click='goHome()']    20s
    SeleniumLibrary.Close Browser

Delete created user
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    SeleniumLibrary.Input Text    id=form_username    admins
    SeleniumLibrary.Input Text    id=form_password    admins@123
    SeleniumLibrary.Click Button    id=form_login
    Sleep    15s
    SeleniumLibrary.Mouse Over    id=settingsName
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//*[@title='User Management']    20s
    SeleniumLibrary.Click Element    xpath=.//*[@title='User Management']
    Sleep    15s
    SeleniumLibrary.Input Text    xpath=.//input[@id='txtEmpName']    ${username}
    SeleniumLibrary.Mouse Over    xpath=.//tbody[@id='manageusershover']/tr/td//tr/td[@class='ng-binding'][contains(.,${firstname})]
    Sleep    10s
    SeleniumLibrary.Click Element    xpath=.//a[@ng-click='delete(x)']
    SeleniumLibrary.Close Browser

Program Period selection
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    SeleniumLibrary.Input Text    id=form_username    admins
    SeleniumLibrary.Input Text    id=form_password    admins@123
    SeleniumLibrary.Click Button    id=form_login
    Sleep    20s
    SeleniumLibrary.Mouse Over    id=settingsName
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//*[@title='Application Configuration']    20s
    SeleniumLibrary.Click Element    xpath=.//*[@title='Application Configuration']
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//*[@id='productcategorydata properiodsel']/div[2]/div[1]/div/div[2]/div
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//div[@class='procatupdate text-right']/button
    Sleep    50s
    SeleniumLibrary.Click Element    xpath=.//*[@id='commonAlert']/div/div/div/div[2]/div/div/div/div/button
    SeleniumLibrary.Close Browser
    Sleep    10s
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    testpurpose
    SeleniumLibrary.Input Text    id=form_password    testpurpose
    SeleniumLibrary.Click Button    id=form_login
    Sleep    20s
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//li[@ng-click='createNewProgram()']    60s
    SeleniumLibrary.Click Element    xpath=.//li[@ng-click='createNewProgram()']
    Sleep    20s
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//div[@class='row IntegrationAdhoc']    20s
    SeleniumLibrary.Close Browser

Edit Target Category
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    SeleniumLibrary.Input Text    id=form_username    admins
    SeleniumLibrary.Input Text    id=form_password    admins@123
    SeleniumLibrary.Click Button    id=form_login
    Sleep    20s
    SeleniumLibrary.Mouse Over    id=settingsName
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//*[@title='Application Configuration']    20s
    SeleniumLibrary.Click Element    xpath=.//*[@title='Application Configuration']
    Sleep    50s
    Select From List By Label    id=renameListid    VPCV Passenger Vehicle
    Clear Element Text    xpath=.//*[@id='txt_renameProduct']
    SeleniumLibrary.Input Text    xpath=.//*[@id='txt_renameProduct']    VPCV Passenger
    SeleniumLibrary.Click Element    xpath=.//*[@id='renameProductid']
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//*[@id='commonAlert']/div/div/div/div[2]/div/div/div/div/button    40s
    SeleniumLibrary.Click Element    xpath=.//*[@id='commonAlert']/div/div/div/div[2]/div/div/div/div/button
    SeleniumLibrary.Close Browser
    
Target customer category
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//div[@id='showhideproducts']/div/label[contains(.,'VPCV Passenger')]    30s
    Select From List By Label    id=renameListid    VPCV Passenger
    Clear Element Text    xpath=.//*[@id='txt_renameProduct']
    SeleniumLibrary.Input Text    xpath=.//*[@id='txt_renameProduct']    VPCV Passenger Vehicle
    SeleniumLibrary.Click Element    xpath=.//*[@id='renameProductid']
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//*[@id='commonAlert']/div/div/div/div[2]/div/div/div/div/button    40s
    SeleniumLibrary.Click Element    xpath=.//*[@id='commonAlert']/div/div/div/div[2]/div/div/div/div/button
    SeleniumLibrary.Close Browser

Count Required
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    SeleniumLibrary.Input Text    id=form_username    admins
    SeleniumLibrary.Input Text    id=form_password    admins@123
    SeleniumLibrary.Click Button    id=form_login
    Sleep    20s
    SeleniumLibrary.Mouse Over    id=settingsName
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//*[@title='Application Configuration']    20s
    SeleniumLibrary.Click Element    xpath=.//*[@title='Application Configuration']
    Sleep    50s
    SeleniumLibrary.Input Text    id=count_Valcount_Val    ${count_val}
    SeleniumLibrary.Click ElementSeleniumLibrary.Click Element    xpath=.//*[@ng-click='minimalvalueupdate(minimalcount)']
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//*[@id='commonAlert']/div/div/div/div[2]/div/div/div/div/button    30s
    SeleniumLibrary.Click ElementSeleniumLibrary.Click Element    xpath=.//*[@id='commonAlert']/div/div/div/div[2]/div/div/div/div/
    SeleniumLibrary.Close Browser
    SeleniumLibrary.Open Browser    ${url}    ${browser}    None    http://10.100.20.113:4444/wd/hub
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    testpurpose
    SeleniumLibrary.Input Text    id=form_password    testpurpose
    SeleniumLibrary.Click Button    id=form_login
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//li[@ng-click='createNewProgram()']    60s
    SeleniumLibrary.Close Browser
