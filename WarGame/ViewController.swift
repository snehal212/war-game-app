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
    var playerScoreValue = 0
    var cpuScoreValue = 0
    var game = WarGame()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dealButton(_ sender: Any) {

        game.deal()
        let cards = game.getCards()
        let scores = game.getScores()
        
        playerCard.image = UIImage.init(named: cards.0)
        cpuCard.image = UIImage.init(named: cards.1)
        
        playerScore.text = String(scores.0)
        cpuScore.text = String(scores.1)
    }

}
