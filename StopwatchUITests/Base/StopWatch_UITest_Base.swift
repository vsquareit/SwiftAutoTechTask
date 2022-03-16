//
//  StopWatch_UITest_Base.swift
//  StopwatchUITests
//
//  Created by kiran kumar on 15/03/2022.
//  Copyright © 2022 YiGu. All rights reserved.
//

import Foundation
import XCTest

class StopWatch_UITest_Base: XCTestCase {
    let app = XCUIApplication()
        
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        UIView.setAnimationsEnabled(false)
        app.launchArguments = ["NoAnimations"]
        app.launch()
    }
    
    override func tearDown() {
        XCUIApplication().terminate()
        super.tearDown()
    }
    
}
