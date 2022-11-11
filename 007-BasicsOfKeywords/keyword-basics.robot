*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Check invoice manager page
    Comment    We're learning how to create a custom keyword.
    Open Browser    http://inv.beaufortfairmont.com/    chrome
    Page Should Contain    Invoice Manager
    Navigate to Home Page

Check I can create my own return value test case
    ${afterDeduct}=    Subtraction    9    7
    Comment    I got the number ${afterDeduct}

My Test Case
    ${nickName}=    Set Variable    Paul
    Print Profile    ${nickName}    Merrill    Trainer    dpaulmerrill
    ${nickName}=    Change Nickname    ${nickName}    Davie
    Print Profile    ${nickName}    Merrill    Trainer    dpaulmerrill


*** Keywords ***
Navigate to Home page
    Go To    http://google.com

Subtraction
    [Arguments]    ${valueToBeDeducted}    ${deductingValue}
    ${result}=    Evaluate    ${valueToBeDeducted} - ${deductingValue}
    RETURN    ${result}

Change Nickname
    [Arguments]    ${original}    ${new}
    RETURN    ${new}

Print Profile
    [Arguments]    ${firstName}    ${lastName}    ${title}    ${twitterHandle}
    Log to Console    \n__Profile__
    Log to Console    First Name: "${firstName}"
    Log to Console    Last Name: "${lastName}"
    Log to Console    Title: "${title}"
    Log to Console    Twitter Handle: "${twitterHandle}"
