*** Settings ***
Library           Selenium2Library

*** Variables ***
${browser}        chrome
${url}            https://www.imdb.com/

*** Test Cases ***
Login
    Open Browser    ${url}    ${browser}
    maximize Browser Window
    Click Element    xpath://*[@id="imdbHeader"]/div[2]/div[5]/a/div
    Click Element    xpath://*[@id="signin-options"]/div/div[2]/a
    Click Element    xpath://*[@id="ap_register_form"]/div/div/div[6]/a    #login page
    Input Text    xpath://*[@id="ap_email"]    rahul.ericsson7@gmail.com
    Input Text    xpath://*[@id="ap_password"]    PASSWORDHERE
    Click Element    xpath://*[@id="signInSubmit"]
    Sleep    3s

Wishlist
    Input Text    xpath://*[@id="suggestion-search"]    Avatar
    Click Element    xpath://*[@id="iconContext-magnify"]
    Click Element    xpath://*[@id="main"]/div/div[2]/table/tbody/tr[1]/td[2]/a
    sleep    3s
    Click Element    xpath://*[@id="__next"]/main/div/section[1]/section/div[3]/section/section/div[3]/div[2]/div[2]/div/div/button[1]/div    #add to wishlist
    Click Element    xpath://*[@id="imdbHeader"]/div[2]/div[4]/a/div
