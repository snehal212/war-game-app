//WarGame.swift,
//Created on 7/12/18

import Foundation

class WarGame {
    var playerScoreValue = 0
    var cpuScoreValue = 0
    var playerCardValue = 0
    var cpuCardValue = 0
    
    func getRandom() -> Int {
       return  Int(arc4random_uniform(12)) + 2
    }
    
    func deal(){
        playerCardValue = getRandom()
        cpuCardValue = getRandom()
    }
    
    func getCards() -> (String, String) {
        let playerCard = "card\(String(playerCardValue))"
        let cpuCard = "card\(String(cpuCardValue))"
        return (playerCard, cpuCard)
    }
    
    func getScores() -> (Int, Int) {
        
        if playerCardValue > cpuCardValue {
            playerScoreValue += 1
        } else if  playerCardValue < cpuCardValue {
            cpuScoreValue += 1
        }
        return (playerScoreValue, cpuScoreValue)
    }
    
}
