//
//  InterfaceController.swift
//  DiceWatch5 Extension
//
//  Created by James van der Moezel on 26/1/17.
//  Copyright © 2017 James van der Moezel. All rights reserved.
//

import WatchKit
import Foundation

let die20:Dice = Dice(sides: 20)
let die4:Dice = Dice(sides: 4)
let die6:Dice = Dice(sides: 6)
let die8:Dice = Dice(sides: 8)
let die10:Dice = Dice(sides: 10)
let die12:Dice = Dice(sides: 12)
let die100:Dice = Dice(sides: 10)

class InterfaceController: WKInterfaceController {

    @IBOutlet var d20: WKInterfaceButton!
    @IBOutlet var d4: WKInterfaceButton!
    @IBOutlet var d6: WKInterfaceButton!
    @IBOutlet var d8: WKInterfaceButton!
    @IBOutlet var d10: WKInterfaceButton!
    @IBOutlet var d12: WKInterfaceButton!
    @IBOutlet var d100: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func d20Button() {
        d20.setBackgroundImageNamed(die20.rollImage())
    }
   
    @IBAction func d6Button() {
        d6.setBackgroundImageNamed(die6.rollImage())
    }

    @IBAction func d4Button() {
        d4.setBackgroundImageNamed(die4.rollImage())
    }

    @IBAction func d8Button() {
        d8.setBackgroundImageNamed(die8.rollImage())
    }
    
    @IBAction func d10Button() {
        d10.setBackgroundImageNamed(die10.rollImage())
    }
   
    @IBAction func d12Button() {
        d12.setBackgroundImageNamed(die12.rollImage())
    }
    
    @IBAction func d100Button() {
        let d100Roll = String(arc4random_uniform(10))
        d100.setBackgroundImageNamed("d100_\(d100Roll)")
    }
}
