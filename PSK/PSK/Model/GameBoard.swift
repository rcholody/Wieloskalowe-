//
//  GameBoard.swift
//  PSK
//
//  Created by Rafał Chołody on 15/05/2018.
//  Copyright © 2018 Rafał Chołody. All rights reserved.
//

import UIKit
extension CGRect{
    init(_ x:CGFloat,_ y:CGFloat,_ width:CGFloat,_ height:CGFloat) {
        self.init(x:x,y:y,width:width,height:height)
    }
    
}
extension CGSize{
    init(_ width:CGFloat,_ height:CGFloat) {
        self.init(width:width,height:height)
    }
}
extension CGPoint{
    init(_ x:CGFloat,_ y:CGFloat) {
        self.init(x:x,y:y)
    }
}
class GameBoard: UIView {

    let life: Life
    init(createLife: Life) {
        life = createLife
        super.init(frame: CGRect.zero)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let currentContext = UIGraphicsGetCurrentContext()
        
        for cell in life.cells {
            currentContext!.setFillColor(colorForCell(state: cell.state).cgColor)
            currentContext!.addRect(frameForCell(cell: cell))
            currentContext?.fillPath()
        }
    }
    
   
    
    func colorForCell (state: State) -> UIColor {
        switch state {
        case .Living:
            return UIColor(red:   .random(),
                           green: .random(),
                           blue:  .random(),
                           alpha: 1.0)
        case .Dead: 
            return UIColor(red:   .random(),
                           green: .random(),
                           blue:  .random(),
                           alpha: 1.0)
        case .PreBirth:
            return UIColor(red:   .random(),
                           green: .random(),
                           blue:  .random(),
                           alpha: 1.0)
    
        }
    
    }
    
    func frameForCell(cell:Cell) -> CGRect {
        let dimensions = CGFloat(self.life.gridSize)
        let cellSize = CGSize(self.bounds.width / dimensions, self.bounds.height / dimensions)
        return CGRect(CGFloat(cell.xCoord) * cellSize.width, CGFloat(cell.yCoord) * cellSize.height, cellSize.width, cellSize.height)
    }
    
}
