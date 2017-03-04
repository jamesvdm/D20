//
//  ViewController.swift
//  Dice5
//
//  Created by James van der Moezel on 25/1/17.
//  Copyright © 2017 James van der Moezel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let die20:Dice = Dice(sides: 20, color: "red")
    let die4:Dice = Dice(sides: 4, color: "red")
    let die6:Dice = Dice(sides: 6, color: "red")
    let die8:Dice = Dice(sides: 8, color: "red")
    let die10:Dice = Dice(sides: 10, color: "red")
    let die12:Dice = Dice(sides: 12, color: "red")
    let die100:Dice = Dice(sides: 10, color: "red")

    @IBOutlet weak var d20: UIButton!
    @IBOutlet weak var d4: UIButton!
    @IBOutlet weak var d6: UIButton!
    @IBOutlet weak var d8: UIButton!
    @IBOutlet weak var d10: UIButton!
    @IBOutlet weak var d12: UIButton!
    @IBOutlet weak var d100: UIButton!

    @IBAction func d20Tapped(_ sender: Any) {
        d20.setImage(UIImage(named: die20.rollImage()), for: .normal)
    }
   
    @IBAction func d4Tapped(_ sender: Any) {
        d4.setImage(UIImage(named: die4.rollImage()), for: .normal)
    }

    @IBAction func d6Tapped(_ sender: Any) {
        d6.setImage(UIImage(named: die6.rollImage()), for: .normal)
    }
    
    @IBAction func d8Tapped(_ sender: Any) {
        d8.setImage(UIImage(named: die8.rollImage()), for: .normal)
    }
    
    @IBAction func d10Tapped(_ sender: Any) {
        d10.setImage(UIImage(named: die10.rollImage()), for: .normal)
    }
    
    @IBAction func d12Tapped(_ sender: Any) {
        d12.setImage(UIImage(named: die12.rollImage()), for: .normal)
    }
    
    @IBAction func d100Tapped(_ sender: Any) {
        let d100Roll = String(arc4random_uniform(10))
        d100.setImage(UIImage(named: "d100_\(d100Roll)"), for: .normal)
    }
}
