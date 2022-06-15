*** Setting ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.udemy.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    click link  xpath://*[@id="udemy"]/div[2]/div[2]/div[2]/div[6]/a/span
    input text  id:email--1 rahul.ericsson7@gmail.com
    input text  id:id_password  Password@12
    click element   xpath://*[@id="submit-id-submit"]
    close browser

*** Keywords ***