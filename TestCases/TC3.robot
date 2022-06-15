*** Setting ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/
*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    loginToApplication
    close browser
*** Keywords ***
loginToApplication
    input text  xpath://*[@id="txtUsername"]    Admin
    input text  xpath://*[@id="txtPassword"]    admin123
    click element   xpath://*[@id="btnLogin"]
