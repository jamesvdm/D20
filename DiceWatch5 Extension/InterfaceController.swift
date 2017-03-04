//
//  InterfaceController.swift
//  DiceWatch5 Extension
//
//  Created by James van der Moezel on 26/1/17.
//  Copyright © 2017 James van der Moezel. All rights reserved.
//

import WatchKit
import Foundation


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
        let d20Roll = String(arc4random_uniform(20))
        d20.setBackgroundImageNamed("d20_\(d20Roll)")
    }
   
    @IBAction func d6Button() {
        let d6Roll = String(arc4random_uniform(6))
        d6.setBackgroundImageNamed("d6_\(d6Roll)")
    }

    @IBAction func d4Button() {
        let d4Roll = String(arc4random_uniform(4))
        d4.setBackgroundImageNamed("d4_\(d4Roll)")
    }

    @IBAction func d8Button() {
        let d8Roll = String(arc4random_uniform(8))
        d8.setBackgroundImageNamed("d8_\(d8Roll)")
    }
    
    @IBAction func d10Button() {
        let d10Roll = String(arc4random_uniform(10))
        d10.setBackgroundImageNamed("d10_\(d10Roll)")
    }
   
    @IBAction func d12Button() {
        let d12Roll = String(arc4random_uniform(12))
        d12.setBackgroundImageNamed("d12_\(d12Roll)")
    }
    
    @IBAction func d100Button() {
        let d100Roll = String(arc4random_uniform(10))
        d100.setBackgroundImageNamed("d100_\(d100Roll)")
    }
}
