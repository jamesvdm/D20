//
//  dice.swift
//  Dice5
//
//  Created by James van der Moezel on 28/1/17.
//  Copyright © 2017 James van der Moezel. All rights reserved.
//

import UIKit

class Dice {
    let sides:Int
    let color:String
    
    init(sides:Int, color:String) {
        self.sides = sides
        self.color = color
    }
    
    func roll() -> Int {
        return Int(arc4random_uniform(UInt32(self.sides)))
    }
    
    func rollImage() -> String {
       return self.getSide(face: self.roll())
    }
    
    func getSide(face:Int) -> String {
        return "d\(self.sides)_\(face)"
    }
}
