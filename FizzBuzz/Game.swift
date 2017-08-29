//
//  Game.swift
//  FizzBuzz
//
//  Created by Cedric ZH Chan on 28/08/2017.
//  Copyright © 2017 Cedric ZH Chan. All rights reserved.
//

import Foundation

class Game {
    var score: Int
    let brain: Brain

    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(move: score + 1)
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
    
    func reset() {
        score = 0
    }
    
}
