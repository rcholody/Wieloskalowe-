//
//  Cell.swift
//  PSK
//
//  Created by Rafał Chołody on 15/05/2018.
//  Copyright © 2018 Rafał Chołody. All rights reserved.
//

import Foundation

class Cell {
    let xCoord: Int
    let yCoord: Int
    var state : State
    
    init(x: Int, y: Int) {
        self.xCoord = x
        self.yCoord = y
        self.state = State.randomState()
        
    }
}
