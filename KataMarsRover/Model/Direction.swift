//
//  Direction.swift
//  KataMarsRover
//
//  Created by Soria Gallego, Juan on 14/12/2017.
//  Copyright © 2017 Accenture. All rights reserved.
//

import Foundation

enum Direction: Directionable {

    case north, east, south, west

    func turnRigth() -> Direction {

        switch self {
        case .north:
            return .east
        case .east:
            return .south
        case .south:
            return .west
        case .west:
            return .north
        }
    }

    func turnLeft() -> Direction {

        switch self {
        case .north:
            return .west
        case .west:
            return .south
        case .south:
            return .east
        case .east:
            return .north
        }
    }

    func currentDirection() -> Direction {
        return self
    }
}
