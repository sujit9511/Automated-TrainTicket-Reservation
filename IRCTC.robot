*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://www.irctc.co.in/nget/train-search


*** Test Cases ***
Open Browser and Url
    Open Browser    url=${url}    browser=edge
    Maximize Browser Window
    Sleep    time_=1

Search Details
    Input Text    locator=//*[@id="origin"]/span/input    text=Pune
    Press Keys    //*[@id="origin"]/span/input    ENTER
    Input Text    locator=//*[@id="destination"]/span/input    text=Solapur
    Press Keys    //*[@id="destination"]/span/input    ENTER
    Click Element    locator=//*[@id="jDate"]/span/input
    Press Keys    //*[@id="jDate"]/span/input    CTRL+A
    Sleep    time_=1
    Press Keys    //*[@id="jDate"]/span/input    BACKSPACE
    Input Text    locator=//*[@id="jDate"]/span/input    text=18/12/2023
    Sleep    time_=1
    Press Keys    //*[@id="jDate"]/span/input    ENTER
    Sleep    time_=1

Select Train
    Sleep    time_=2
    Click Element
    ...    locator=//*[@id="divMain"]/div/app-train-list/div[4]/div/div[5]/div[3]/div[1]/app-train-avl-enq/div[1]/div[5]/div[1]/table/tr/td[2]/div/div[2]
    Sleep    time_=1
    Click Element
    ...    locator=//*[@id="divMain"]/div/app-train-list/div[4]/div/div[5]/div[3]/div[1]/app-train-avl-enq/div[1]/div[7]/div[1]/div[3]/table/tr/td[2]/div/div[2]
    Sleep    time_=1
    Execute Javascript    window.scrollBy(0,100)
    Sleep    time_=2
    Click Button
    ...    locator=//*[@id="divMain"]/div/app-train-list/div[4]/div/div[5]/div[3]/div[1]/app-train-avl-enq/div[2]/div/span/span[1]/button

Sign In
    Sleep    time_=20
    Click Button
    ...    locator=//*[@id="login_header_disable"]/div/div/div[2]/div[2]/div/div[2]/div[2]/div[2]/form/span/button

    Sleep    time_=10

    Close Browser
