//
//  Directionable.swift
//  KataMarsRover
//
//  Created by Soria Gallego, Juan on 14/12/2017.
//  Copyright © 2017 Accenture. All rights reserved.
//

import Foundation

protocol Directionable {
    func turnRigth() -> Direction
    func turnLeft() -> Direction
    func currentDirection() -> Direction
}
