*** Settings ***   
Library    RPA.Windows    
Library    Screenshot
Library    RPA.Excel.Files
Library    RPA.Tables
Library    Collections
Variables    ../PageObjects/variables.py
Resource    ../Resources/CalcKeyword.robot
Test Teardown   Close My Apps

*** Variables ***
${expected value}=    Display is 1

*** Test Cases ***
Verfify Calcualtor Functionality
            
        # ${old wait time}=    Set Wait Time    1
        # ${odl global timeout}=    Set Global Timeout    10
        # Log To Console    old wait time ${old wait time}
        # Log To Console    old wait time ${odl global timeout}
        # ${OS}=    Get Os Version
        # Log To Console    OS Version is ${OS}
        
        Open Calculator Application From Run    ${AppName}

        ${Results}=    Right Click    id:CalculatorResults

        ${actual value}=    Get Attribute    id:CalculatorResults    Name
        
        Should Be Equal As Strings    ${actual value}    ${expected value}        
        # IF    "${actual value}" == "${expected value}"
        #     Log To Console    Hurray
        # ELSE
        #     Take Screenshot
        #     Fail    expected ${expected value} but found ${actual value}
        # END
    

*** Keywords ***
Close My Apps
    Run Keyword If Test Failed    Take Screenshot
    Close Window    ${AppName}
    
# Verfify Calcualtor Functionality1

#     TRY
#         ${old wait time}=    Set Wait Time    1
#         ${odl global timeout}=    Set Global Timeout    5
#         Log To Console    old wait time ${old wait time}
#         Log To Console    old wait time ${odl global timeout}
#         ${OS}=    Get Os Version
#         Log To Console    OS Version is ${OS}
        
#         Windows Run    calc.exe
#         ${windowHeader}=    Control Window    ${App Name}
#         Click    Open Navigation
#         Click    Standard
#         Maximize Window    ${App Name}
#         Minimize Window    ${App Name}
#         Restore Window    ${App Name}
#         ${Results}=    Right Click    id:CalculatorResults
        
#         ${actual value}=    Get Attribute    id:CalculatorResults    Name
#         IF    "${actual value}" == "${expected value}"
#             Log To Console    Hurray
#         ELSE
#             Take Screenshot    
#             Fail    expected ${expected value} but found ${actual value}
#         END

#     EXCEPT
#         Take Screenshot
#         Fail
#     END

# Read Excel 
#     Open Workbook    Robo.xlsx
#     ${sheets}=    Read Worksheet   header=${True}
#     Open Workbook    Robo1.xlsx
#     ${sheets1}=    Read Worksheet   header=${True}
#     Log    ${sheets}
#     Log    ${sheets1}
#     Lists Should Be Equal    ${sheets}    ${sheets1}


