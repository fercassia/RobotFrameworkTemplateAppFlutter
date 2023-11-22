*** Settings ***
Resource   ../conf/enviroments-variables.robot
Resource   ../conf/settings.robot
*** Variables ***

*** Keywords ***
Open APP
    Log    Before opening application
    Open Application        ${APPIUM_SERVER}    
    ...                     platformName=${PLATFORM_NAME}    
    ...                     automationName=${AUTOMATION_NAME}    
    ...                     platformVersion=${PLATFORM_VERSION}    
    ...                     deviceName=${DEVICE_NAME}    
    ...                     app=${APP} 
    ...                     appPackage=${APP_PACKGE}    
    ...                     appActivity=${APP_ACTIVITY}
    Log    After opening application