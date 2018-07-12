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
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDefaultValues() {
        XCTAssert(game.getCards()==("card0","card0"))
        XCTAssert(game.getScores()==(0,0))
    }
    
    func testDeal(){
        game.playerCardValue = 0
        game.cpuCardValue = 0
        game.deal()
        XCTAssert(game.playerCardValue != 0)
        XCTAssert(game.cpuCardValue != 0)
        game.playerCardValue = 0
        game.cpuCardValue = 0
    }
    
    func testGetScores(){
        game.playerCardValue =  1
        game.cpuCardValue = 1
        game.playerScoreValue = 0
        game.cpuScoreValue = 0
        XCTAssert( game.getScores() == (0, 0))
        
        game.playerCardValue =  10
        game.cpuCardValue = 1
        XCTAssert( game.getScores() == (1, 0))
        
        game.playerCardValue =  1
        game.cpuCardValue = 10
        
        XCTAssert( game.getScores() == (1, 1))
        game.playerCardValue =  0
        game.cpuCardValue = 0
        game.playerScoreValue = 0
        game.cpuScoreValue = 0
        
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
