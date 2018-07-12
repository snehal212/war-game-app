//
//  ViewController.swift
//  WarGame
//
//  Created by Purvi Patel on 6/30/18.
//  Copyright © 2018 Snehal Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerCard: UIImageView!
    @IBOutlet weak var cpuCard: UIImageView!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var cpuScore: UILabel!

    var game = WarGame()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func dealButton(_ sender: Any) {

        game.deal()

        playerCard.image = UIImage.init(named: game.getCards().0)
        cpuCard.image = UIImage.init(named: game.getCards().1)
        
        playerScore.text = String(game.getScores().0)
        cpuScore.text = String(game.getScores().1)
    }

}
