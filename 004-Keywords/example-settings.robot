*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Create an Invoice
    Comment    This is my first RobotFramework test case!
    My Keywords
    Open Browser    http://inv.beaufortfairmont.com/    chrome
    

*** Keywords ***

My Keywords
    Log to Console    This is a keyword I created