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

    @IBOutlet weak var d20: UIButton!

    @IBAction func d20Tapped(_ sender: Any) {
        d20.setImage(UIImage(named: die20.rollImage()), for: .normal)
    }

}
