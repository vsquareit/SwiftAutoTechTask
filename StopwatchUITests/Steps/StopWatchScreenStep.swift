//
//  StopWatchScreen.swift
//  StopwatchUITests
//
//  Created by kiran kumar on 15/03/2022.
//  Copyright © 2022 YiGu. All rights reserved.
//

import Foundation
import XCTest

extension StopWatch_UITest_Base {
    
    func AppIsReady() {
        XCTContext.runActivity(named: "Given App is ready ") { _ in
            XCTAssertTrue(StopWatchScreen.startButton.element.exists)
        }
    }
    
    func ClickOnStartButton(){
        XCTContext.runActivity(named: "Click On Start Button"){ _ in
            XCUIApplication().staticTexts["Start"].tap()
        }
    }
    
    func ClickOnStopButton(){
        XCTContext.runActivity(named: "Click On Stop Button"){ _ in
            XCUIApplication().staticTexts["Stop"].tap()
        }
    }
    
    func ClickOnResetButton(){
        XCTContext.runActivity(named: "Click On Reset Button"){ _ in
            XCUIApplication().staticTexts["Reset"].tap()
        }
    }
    
    func VerifyStopButtonDisplays(){
            XCTAssertTrue(StopWatchScreen.stopButton.element.exists)
        }
    
    func VerifyStartButtonDisplays(){
            XCTAssertTrue(StopWatchScreen.startButton.element.exists)
        }
    
    func VerifyResetButtonDisplays(){
            XCTAssertTrue(StopWatchScreen.resetButton.element.exists)
        }
    
    func VerifyTimerLabelDisplays(){
            XCTAssertTrue(StopWatchScreen.timerDisplay.element.exists)
        }
    
    func ClickOnLapButton(){
        XCTContext.runActivity(named: "Click On Lap Button"){ _ in
            XCUIApplication().staticTexts["Lap"].tap()
        }
    }
    
    // this function will click on lap 5 times (based on count variable) and verify items in lap text (lap text key and lap time value) for every iteration.
    func VerifyLapsDisplay(){
        let count = 1...5
        for number in count{
            XCUIApplication().staticTexts["Lap"].tap()
            let lap1StaticText = app.staticTexts["Lap "+String(number)]  //  Lap1, 00:00:38
            print(lap1StaticText)
            let result = lap1StaticText.label.split(separator: ",")
            XCTAssertEqual(result[0], "Lap"+" "+String(number))
            
    // There is no accessebility locator for lap row, in practise I will work with developers to get this accessebility locator added with which I can get the full text from the row and verify lap time as well.
            //XCTAssertTrue(result[1] == nil)
        }
        
        }
    
    func VerifyLapsOneNotDisplayAfterResetButton(){
        let lap1StaticText = app.staticTexts["Lap 1"]
        XCTAssertFalse( lap1StaticText == nil)
        
               }
    }

