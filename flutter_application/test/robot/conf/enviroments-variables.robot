#Config enviroment to rum emolutator
*** Variables ***
${APPIUM_SERVER}        http://127.0.0.1:4723/wd/hub
${AUTOMATION_NAME}      UiAutomator2
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     12
${DEVICE_NAME}          emulator-5554
# O APK deve ser permitir realização do dobug, por isso adicionado o apk da pasta debug. Desta forma roda o Appium Inspector
${APP}                  C:\\Users\\FernandaCassia\\OneDrive\\Documents\\RobotFrameworkTemplateAppFlutter\\flutter_application\\build\\app\\outputs\\apk\\debug\\app-debug.apk
${APP_PACKGE}           com.example.flutter_application
${APP_ACTIVITY}         ${APP_PACKGE}.MainActivity