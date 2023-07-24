*** Settings ***
Library    RPA.Windows    
Library    Screenshot
Library    RPA.Excel.Files
Library    RPA.Tables
Library    Collections
Variables    ../PageObjects/locators.py


*** Keywords ***
Open Calculator Application From Run
    [Arguments]    ${App Name}    
    Windows Run    calc.exe
        ${setc}=     Set Global Timeout    5
        Log To Console    page object time is ${setc}
        ${windowHeader}=    Control Window    ${App Name}
        Click    Open Navigation
        Click    ${stabdardButton}
        Maximize Window    ${App Name}
        Minimize Window    ${App Name}
        Restore Window    ${App Name}
