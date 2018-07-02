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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dealButton(_ sender: Any) {
        let playerNumber = arc4random_uniform(12) + 2
        let cpuNumber = arc4random_uniform(12) + 2
        
        playerCard.image = UIImage.init(named: "card\(String(playerNumber))")
        cpuCard.image = UIImage.init(named: "card\(String(cpuNumber))")
        
        if playerNumber > cpuNumber {
            playerScoreValue += 1
        } else if  playerNumber < cpuNumber {
            cpuScoreValue += 1
        }
        playerScore.text = String(playerScoreValue)
        cpuScore.text = String(cpuScoreValue)
    }

}
