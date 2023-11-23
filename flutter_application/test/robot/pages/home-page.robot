*** Settings ***
Library        XML
Resource       ../conf/settings.robot
*** Variables ***
${homeText}               //android.view.View[@content-desc="You have pushed the button this many times:"]
${countNumber}            //android.view.View[@index="2"]
${decrementButton}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]
${restoreButton}          //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${incrementButton}        //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[3]



    
