//
//  Rover.swift
//  KataMarsRover
//
//  Created by Soria Gallego, Juan on 14/12/2017.
//  Copyright © 2017 Accenture. All rights reserved.
//

import Foundation

class Rover {

    static let DEFAULTX = 0
    static let DEFAULTY = 0
    static let DEFAULTDIRECTION: Direction = .north

    // swiftlint:disable:next identifier_name
    var x: Int = 0
    // swiftlint:disable:next identifier_name
    var y: Int = 0
    var direction: Directionable!

    // swiftlint:disable:next identifier_name
    init(x: Int = DEFAULTX, y: Int = DEFAULTY, direction: Direction = .north) {
        self.x = x
        self.y = y
        self.direction = direction
    }
    func move(commands: String) {
        for command in commands {
            if command == "R" {
                self.direction = direction.turnRigth()
            } else if command == "L" {
                self.direction = direction.turnLeft()
            } else if command == "F" {
                if direction.currentDirection() == Direction.north {
                    y += 1
                } else if direction.currentDirection() == Direction.east {
                    x += 1
                } else if direction.currentDirection() == Direction.south {
                    y -= 1
                } else if direction.currentDirection() == Direction.west {
                    x -= 1
                }

            }
        }

    }
}
