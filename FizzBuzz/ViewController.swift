//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Cedric ZH Chan on 28/08/2017.
//  Copyright © 2017 Cedric ZH Chan. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var game: Game?
    var gameScore: Int? {
        didSet {
            guard let unwrappedGameScore = gameScore else {
                return
            }
            
            numberButton.setTitle(String(unwrappedGameScore), for: .normal)
        }
    }
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()

        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        gameScore = unwrappedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

    func resetGame(){
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        unwrappedGame.reset()
        gameScore = unwrappedGame.score
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(move: .number)
        case fizzButton:
            play(move: .fizz)
        case buzzButton:
            play(move: .buzz)
        case fizzBuzzButton:
            play(move: .fizzBuzz)
        case playAgainButton:
            resetGame()
        default:
            print("Invalid selection")
        }
    }
}

