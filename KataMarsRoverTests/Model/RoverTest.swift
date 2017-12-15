//
//  RoverTest.swift
//  KataMarsRoverTests
//
//  Created by Soria Gallego, Juan on 14/12/2017.
//  Copyright © 2017 Accenture. All rights reserved.
//

import XCTest
@testable import KataMarsRover

class RoverTest: XCTestCase {

    var sut: Rover!

    let rigth = "R"
    let left = "L"
    let forward = "F"
    let backward = "B"

    let initialX = 4
    let initialY = 10

    override func setUp() {
        super.setUp()
        sut = Rover()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSutIsNotNull() {

        XCTAssertNotNil(sut)
    }

    func testInitialXPositionIsZero() {

        XCTAssertEqual(0, Rover.DEFAULTX)
    }

    func testInitialYPositionIsZero() {

        XCTAssertEqual(0, Rover.DEFAULTY)
    }

    func testInitialRoverPositionXIsDefaultX() {

        XCTAssertEqual(Rover.DEFAULTX, sut.x)
    }

    func testInitialRoverPositionYIsDefaultY() {

        XCTAssertEqual(Rover.DEFAULTY, sut.y)
    }

    func testInitialRoverPositionTest() {
        sut = Rover(x: 3, y: 4)
        XCTAssertEqual(3, sut.x)
        XCTAssertEqual(4, sut.y)
    }

    func testInitialDirectionIsNorth() {
        XCTAssertEqual(Direction.north, Rover.DEFAULTDIRECTION)
    }

    func testInitialRoverDirectionIsDefault() {
        XCTAssertEqual(Rover.DEFAULTDIRECTION, sut.direction.currentDirection())
    }

    /*func testRoverTurnRigthOnceFromNorthToEast() {
        sut.move(commands: "R")
        XCTAssertEqual(Direction.East, sut.direction.currentDirection())
    }

    func testRoverTurnRightTwiceFromNorthToSouth() {
        sut.move(commands: "RR")
        XCTAssertEqual(Direction.South, sut.direction.currentDirection())
    }

    func testRoverTurnRigthThreeTimesFromNorthToWest() {
        sut.move(commands: "RRR")
        XCTAssertEqual(Direction.West, sut.direction.currentDirection())
    }

    func testRoverTurnRigthFourTimesFromNorthToNorth() {
        sut.move(commands: "RRRR")
        XCTAssertEqual(Direction.North, sut.direction.currentDirection())
    }

    func testRoverTurnRigthFromEastToSouth() {
        sut = Rover(direction: Direction.East)
        sut.move(commands: "R")
        XCTAssertEqual(Direction.South, sut.direction.currentDirection())
    }
    
    func testRoverTurnLeftOnceFromNorthToWest() {
        sut.move(commands: "L")
        XCTAssertEqual(Direction.West, sut.direction.currentDirection())
    }*/

    func testRigthCommandInvokesTurnRigthDirection() {
        let direction = DirectionMocks(direction: .east)
        sut.direction = direction
        sut.move(commands: rigth)
        XCTAssert(direction.turnRigthCalled)
    }

    func testRigthCommandInvokesTurnLeftDirection() {
        let direction = DirectionMocks(direction: .east)
        sut.direction = direction
        sut.move(commands: left)
        XCTAssert(direction.turnLeftCalled)
    }

    func testTurnRigthReturnValueIsSentValueEast() {
        let direction = DirectionMocks(direction: .east)
        sut.direction = direction
        sut.move(commands: rigth)
        XCTAssertEqual(.east, sut.direction.currentDirection())
    }

    func testTurnRigthReturnValueIsSentValueSouth() {
        let direction = DirectionMocks(direction: .south)
        sut.direction = direction
        sut.move(commands: rigth)
        XCTAssertEqual(.south, sut.direction.currentDirection())
    }

    func testTurnLeftReturnValueIsSentValueEast() {
        let direction = DirectionMocks(direction: .east)
        sut.direction = direction
        sut.move(commands: left)
        XCTAssertEqual(.east, sut.direction.currentDirection())
    }

    func testTurnLeftReturnValueIsSentValueSouth() {
        let direction = DirectionMocks(direction: .south)
        sut.direction = direction
        sut.move(commands: left)
        XCTAssertEqual(.south, sut.direction.currentDirection())
    }

//    func testGoForwardFromDefaultStateIncrementsYDirectionNorth() {
//        sut.move(commands: forward)
//        XCTAssertEqual(0, sut.x)
//        XCTAssertEqual(1, sut.y)
//    }
//
//    func testGoForwardFromInitialStateIncrementsYDirectionNorth() {
//
//        sut = Rover(x: initialX, y: initialY, direction: .North)
//        sut.move(commands: forward)
//        XCTAssertEqual(initialX, sut.x)
//        XCTAssertEqual(initialY + 1, sut.y)
//
//    }
//
//    func testGoForwardFromDefaultStateIncrementsXDirectionEast() {
//        sut = Rover(direction: .East)
//        sut.move(commands: forward)
//        XCTAssertEqual(1, sut.x)
//        XCTAssertEqual(0, sut.y)
//    }
//
//    func testGoForwardFromInitialStateIncrementsXDirectionEast() {
//
//        sut = Rover(x: initialX, y: initialY, direction: .East)
//        sut.move(commands: forward)
//        XCTAssertEqual(initialX + 1, sut.x)
//        XCTAssertEqual(initialY, sut.y)
//
//    }
//
//    func testGoForwardFromInitialStateDecrementsYDirectionSouth() {
//
//        sut = Rover(x: initialX, y: initialY, direction: .South)
//        sut.move(commands: forward)
//        XCTAssertEqual(initialX , sut.x)
//        XCTAssertEqual(initialY - 1, sut.y)
//
//    }
//
//    func testGoForwardFromInitialStateDecrementsXDirectionWest() {
//
//        sut = Rover(x: initialX, y: initialY, direction: .West)
//        sut.move(commands: forward)
//        XCTAssertEqual(initialX - 1, sut.x)
//        XCTAssertEqual(initialY, sut.y)
//
//    }

    func testGoForwardFromNorthIncrementsY() {
        moveForward(x: 1, y: 3, direction: .north, expectedX: 1, expectedY: 4)

    }

    func testGoForwardFromEastIncrementsX() {
        moveForward(x: 1, y: 3, direction: .east, expectedX: 2, expectedY: 3)

    }

    func testGoForwardFromSouthDecrementsY() {
        moveForward(x: 1, y: 3, direction: .south, expectedX: 1, expectedY: 2)

    }

    func testGoForwardFromWestDecrementsX() {
        moveForward(x: 1, y: 3, direction: .west, expectedX: 0, expectedY: 3)

    }

    // swiftlint:disable:next identifier_name
    func moveForward(x: Int, y: Int, direction: Direction, expectedX: Int, expectedY: Int, file: StaticString = #file, line: UInt = #line) {

        sut = Rover(x: x, y: y, direction: direction)
        sut.move(commands: forward)
        XCTAssertEqual(expectedX, sut.x, file: file, line: line)
        XCTAssertEqual(expectedY, sut.y, file: file, line: line)
    }

    class DirectionMocks: Directionable {

        var turnRigthCalled = false
        var turnLeftCalled = false
        let expectedReturn: Direction

        init(direction: Direction) {
            expectedReturn = direction
        }

        func turnRigth() -> Direction {

            turnRigthCalled = true
            return expectedReturn
        }

        func turnLeft() -> Direction {

            turnLeftCalled = true
            return expectedReturn
        }

        func currentDirection() -> Direction {
            return expectedReturn
        }
    }

}
