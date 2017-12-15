//
//  DirectionTest.swift
//  KataMarsRoverTests
//
//  Created by Soria Gallego, Juan on 14/12/2017.
//  Copyright © 2017 Accenture. All rights reserved.
//

import XCTest
@testable import KataMarsRover

class DirectionTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testTurnRigthFromNorthIsEast() {
        let sut = Direction.north
        XCTAssertEqual(Direction.east, sut.turnRigth())
    }

    func testTurnRigthFromEastIsSouth() {
        let sut = Direction.east
        XCTAssertEqual(Direction.south, sut.turnRigth())
    }

    func testTurnRigthFromSouthIsWest() {
        let sut = Direction.south
        XCTAssertEqual(Direction.west, sut.turnRigth())
    }

    func testTurnRigthFromWestIsNorth() {
        let sut = Direction.west
        XCTAssertEqual(Direction.north, sut.turnRigth())
    }

    func testTurnLeftFromNorthIsWest() {
        let sut = Direction.north
        XCTAssertEqual(Direction.west, sut.turnLeft())
    }

    func testTurnLeftFromWestIsSouth() {
        let sut = Direction.west
        XCTAssertEqual(Direction.south, sut.turnLeft())
    }

    func testTurnLeftFromSouthIsEast() {
        let sut = Direction.south
        XCTAssertEqual(Direction.east, sut.turnLeft())
    }

    func testTurnLeftFromEastIsNorth() {
        let sut = Direction.east
        XCTAssertEqual(Direction.north, sut.turnLeft())
    }

}
