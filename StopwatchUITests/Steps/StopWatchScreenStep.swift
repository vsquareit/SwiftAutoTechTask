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
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is ready ") { _ in
            XCTAssertTrue(StopWatchScreen.startButton.element.exists)
        }
    }
}
