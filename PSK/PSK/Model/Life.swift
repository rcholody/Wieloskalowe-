//
//  Life.swift
//  PSK
//
//  Created by Rafał Chołody on 15/05/2018.
//  Copyright © 2018 Rafał Chołody. All rights reserved.
//

import Foundation

class Life {
    var cells: [Cell]
    let gridSize: Int = 20
    
    init() {
        cells = [Cell]()
        for xLoc in 0..<self.gridSize {
            for yLoc in 0..<self.gridSize {
                cells.append(Cell(x: xLoc, y: yLoc))
            }
        }
    }
    
    
}
