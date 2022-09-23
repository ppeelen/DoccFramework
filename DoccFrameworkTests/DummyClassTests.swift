//
//  DummyClassTests.swift
//  DoccFrameworkTests
//
//  Created by Paul Peelen on 2022-09-23.
//

import XCTest
@testable import DoccFramework

final class DummyClassTests: XCTestCase {

    private var sut: DummyClass!
    
    override func setUpWithError() throws {
        sut = DummyClass()
    }

    func testSayHi() {
        sut.sayHi(name: "My name")
    }
}
