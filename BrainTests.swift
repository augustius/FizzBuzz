//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Cedric ZH Chan on 28/08/2017.
//  Copyright © 2017 Cedric ZH Chan. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    let brain = Brain()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testIsDivisibleByThree(){
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    func testIsNotDivisibleByThree(){
        let result = brain.isDivisibleByThree(number: 2)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive(){
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }

    func testIsNotDivisibleByFive(){
        let result = brain.isDivisibleByFive(number: 1)
        XCTAssertEqual(result, false)
    }

    func testIsDivisibleByFifteen(){
        let result = brain.isDivisibleByFifteen(number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFifteen(){
        let result = brain.isDivisibleByFifteen(number: 5)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizz(){
        let result = brain.check(move: 3)
        XCTAssertEqual(result, Move.fizz)
    }

    func testSayBuzz(){
        let result = brain.check(move: 5)
        XCTAssertEqual(result, Move.buzz)
    }

    func testSayFizzBuzz(){
        let result = brain.check(move: 15)
        XCTAssertEqual(result, Move.fizzBuzz)
    }
    
    func testSayNumber(){
        let result = brain.check(move: 1)
        XCTAssertEqual(result, Move.number)
    }

    
}
