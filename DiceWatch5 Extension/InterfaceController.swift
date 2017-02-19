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
    @IBOutlet var d6: WKInterfaceButton!
    @IBOutlet var d4: WKInterfaceButton!
    
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

}
