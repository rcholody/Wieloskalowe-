//
//  Random.swift
//  PSK
//
//  Created by Rafał Chołody on 15/05/2018.
//  Copyright © 2018 Rafał Chołody. All rights reserved.
//

import Foundation
import CoreGraphics

public extension CGFloat{
    
    public static func random() -> CGFloat{
        return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
    }
    
   
}
