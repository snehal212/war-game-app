//
//  WarGameUnitTests.swift
//  WarGameTests
//
//  Created by Snehal Patel on 7/12/18.
//  Copyright © 2018 Snehal Patel. All rights reserved.
//

import XCTest
@testable import WarGame

class WarGameUnitTests: XCTestCase {
    var game = WarGame()
    
    override func setUp() {
        super.setUp()
        setValues(0, 0, 0, 0)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func setValues(_ playerScoreValue: Int,_ cpuScoreValue: Int,_ playerCardValue: Int,_ cpuCardValue: Int){
        game.playerScoreValue = playerScoreValue
        game.cpuScoreValue = cpuScoreValue
        game.playerCardValue = playerCardValue
        game.cpuCardValue = cpuCardValue
    }
    
    func testDefaultValues() {
        XCTAssert(game.getCards()==("card0","card0"))
        XCTAssert(game.getScores()==(0,0))
    }
    
    func testDeal(){
        game.deal()
        XCTAssert(game.playerCardValue != 0)
        XCTAssert(game.cpuCardValue != 0)
    }
    
    func testGetScores(){
        setValues(0, 0, 1, 1)
        XCTAssert( game.getScores() == (0, 0))
        
        setValues(0, 0, 1, 10)
        XCTAssert( game.getScores() == (0, 1))
        
        setValues(0, 1, 10, 1)
        XCTAssert( game.getScores() == (1, 1))
    }
    
}
