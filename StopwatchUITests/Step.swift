//
//  Step.swift
//  StopwatchUITests
//
//  Created by kiran kumar on 15/03/2022.
//  Copyright © 2022 YiGu. All rights reserved.
//

import Foundation
typealias Given = Step
typealias When = Step
typealias Then = Step
typealias And = Step

/// Represents a BDD Step. I.e. Given(I: doSomething)
struct Step {
    
    /// A reference to the most recently created Step, useful if you want to find out what step failed
    static var current: Step?
    
    let line: UInt
    let function: StaticString
    
    @discardableResult
    init(_ handler: @autoclosure () -> Void, line: UInt = #line, function: StaticString = #function) {
        self.line = line
        self.function = function
        Step.current = self
        handler()
    }
    
    @discardableResult
    init(I handler: @autoclosure () -> Void, line: UInt = #line, function: StaticString = #function) {
        self.line = line
        self.function = function
        Step.current = self
        handler()
    }
    
    @discardableResult
    init(the handler: @autoclosure () -> Void, line: UInt = #line, function: StaticString = #function) {
        self.line = line
        self.function = function
        Step.current = self
        handler()
    }
    
    @discardableResult
    init(_ handler: () -> Void, line: UInt = #line, function: StaticString = #function) {
        self.line = line
        self.function = function
        Step.current = self
        handler()
    }
    
    @discardableResult
    init(I handler: () -> Void, line: UInt = #line, function: StaticString = #function) {
        self.line = line
        self.function = function
        Step.current = self
        handler()
    }
    
    @discardableResult
    init(the handler: () -> Void, line: UInt = #line, function: StaticString = #function) {
        self.line = line
        self.function = function
        Step.current = self
        handler()
    }
    
}
