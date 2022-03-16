//
//  StopWatchScreen.swift
//  StopwatchUITests
//
//  Created by kiran kumar on 15/03/2022.
//  Copyright © 2022 YiGu. All rights reserved.
//

import Foundation
import XCTest

enum StopWatchScreen: String {

    case startButton = "Start"
    case stopButton = "Stop"
    case lapButton = "Lap"
    case resetButton = "Reset"
    case timerDisplay = "timerLabel"
    
    var element: XCUIElement {

        switch self {
        case .startButton, .stopButton, .lapButton, .resetButton :
            return XCUIApplication().buttons[self.rawValue]
        case .timerDisplay:
            return XCUIApplication().staticTexts[self.rawValue]
        }
    }
}
