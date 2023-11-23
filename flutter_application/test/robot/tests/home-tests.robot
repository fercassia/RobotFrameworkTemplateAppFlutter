*** Settings ***
Resource         ../base/keywords-baseSetup.robot
Resource         ../pages/home-page.robot

*** Variables ***
${maxNumberIncrement}        10
${maxNumberDecrement}        9

*** Keywords ***
Click increment times
    FOR    ${counter}    IN RANGE    0    ${maxNumberIncrement}
        Click Element    ${incrementButton}
    END

Click decrencrement times
    FOR    ${counter}    IN RANGE    0    ${maxNumberDecrement}
        Click Element    ${decrementButton}
    END


*** Test Cases ***
Home Show Correct Text
    Open APP
    Wait Until Page Contains Element    ${homeText}
    Close Application

Home Show Initial number as zero
    Open APP
    Wait Until Page Contains            0
    Close Application

Count one time
    Open APP
    Wait Until Element Is Visible      ${incrementButton}
    Click Element                      ${incrementButton}
    Wait Until Page Contains           1
    Close Application

Count is always zero when decrement value equal zero
    Open APP
    Wait Until Element Is Visible      ${decrementButton}
    Click Element                      ${decrementButton}
    Wait Until Page Contains           0
    Close Application

Decrement until zero
    Open APP
    Wait Until Element Is Visible      ${incrementButton}
    Click Element                      ${incrementButton}
    Wait Until Page Contains           1
    Click Element                      ${decrementButton}
    Wait Until Page Contains           0
    Close Application

Increment eleven times
    Open APP
    Wait Until Element Is Visible      ${incrementButton}
    Click increment times
    Wait Until Page Contains           10
    Click Element                      ${incrementButton}
    Wait Until Page Contains           11
    Close Application

Restore counter
    Open APP
    Wait Until Element Is Visible      ${incrementButton}
    Click increment times
    Wait Until Page Contains           ${maxNumberIncrement}
    Click Element                      ${restoreButton}
    Wait Until Page Contains           0
    Close Application

Count decrement until lefet one
    Open APP
    Wait Until Element Is Visible      ${incrementButton}
    Click increment times
    Wait Until Page Contains           10
    Click decrencrement times
    Wait Until Page Contains           1
    Close Application