//
//  ReminderSetUpScreenModelTests.swift
//  
//
//  Created by 김상진 on 2023/04/20.
//

import XCTest
@testable import OnboardingUI

final class ReminderSetUpScreenModelTests: XCTestCase {
    
    private var sut: ReminderSetUpScreenModel!

    override func setUp() {
        sut = ReminderSetUpScreenModel()
    }

    override func tearDown() {
        sut = nil
    }
    
    func test_initial_view_state() {
        XCTAssertEqual(sut.viewState, .initial)
    }
}
