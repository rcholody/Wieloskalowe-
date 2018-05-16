//
//  State.swift
//  PSK
//
//  Created by Rafał Chołody on 15/05/2018.
//  Copyright © 2018 Rafał Chołody. All rights reserved.
//

import Foundation

enum State : Int {
    case Living = 0, PreBirth, Dead
    
    static func randomState() -> State {
        
        guard let state = State(rawValue: Int(arc4random_uniform(2))) else {
            return .PreBirth
        }
        return state
    }
}
