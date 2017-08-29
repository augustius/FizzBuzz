//
//  Brain.swift
//  FizzBuzz
//
//  Created by Cedric ZH Chan on 28/08/2017.
//  Copyright © 2017 Cedric ZH Chan. All rights reserved.
//

import Foundation

class Brain {
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }

    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }

    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(move: Int) -> Move {
        if isDivisibleByFifteen(number: move){
            return .fizzBuzz
        } else if isDivisibleByThree(number: move){
            return .fizz
        } else if isDivisibleByFive(number: move){
            return .buzz
        } else {
            return .number
        }
    }
}
