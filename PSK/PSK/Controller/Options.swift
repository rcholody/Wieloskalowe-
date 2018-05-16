//
//  Options.swift
//  PSK
//
//  Created by Rafał Chołody on 12/05/2018.
//  Copyright © 2018 Rafał Chołody. All rights reserved.
//

import UIKit

class Options: UIViewController {
  
    @IBOutlet weak var menuBtn: UIButton!
    
    @IBOutlet weak var boardView: UIView!
    
    var life = Life()
    let gameBoard : GameBoard
    
    required init?(coder aDecoder: NSCoder) {
        gameBoard = GameBoard(createLife: life)
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
            gameBoard.frame = boardView.frame
        gameBoard.center = CGPoint(gameBoard.frame.size.width / 2, gameBoard.frame.size.height / 2)
            boardView.addSubview(gameBoard)
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

    

    

}
