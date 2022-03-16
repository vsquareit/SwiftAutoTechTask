//
//  StopWatchScreen.swift
//  StopwatchUITests
//
//  Created by kiran kumar on 15/03/2022.
//  Copyright © 2022 YiGu. All rights reserved.
//
import XCTest

class StopWatchScreenTest: StopWatch_UITest_Base {
    
    func testStartDisplayedOnLaunch() {
        Given(the: AppIsReady)
        When(I: ClickOnStartButton)
        Then(the: VerifyStopButtonDisplays)
    }
    
    func testResetDisplayedOnLaunch() {
        Given(the: AppIsReady)
        When(I: ClickOnStartButton)
        And(I: ClickOnStopButton)
        Then(the: VerifyResetButtonDisplays)
    }
    
    func testStartDisplayedAfterStop() {
        Given(the: AppIsReady)
        When(I: ClickOnStartButton)
        And(I: ClickOnStopButton)
        Then(the: VerifyStartButtonDisplays)
    }
    
    func testTimerDisplay() {
        Given(the: AppIsReady)
        When(I: ClickOnStartButton)
        Then(the: VerifyTimerLabelDisplays)
    }
    
    
    func testLapsDisplay() {
        Given(the: AppIsReady)
        When(I: ClickOnStartButton)
        And(I: VerifyTimerLabelDisplays)
        Then(I: VerifyLapsDisplay)
    }
    
    func testLapsNotDisplayedAfterReset() {
        Given(the: AppIsReady)
        When(I: ClickOnStartButton)
        And(I: ClickOnLapButton)
        //And(I: VerifyLapOneDisplay)
        And(I: ClickOnStopButton)
        And(I: ClickOnResetButton)
        Then(I: VerifyLapsOneNotDisplayAfterResetButton)
    }
}
