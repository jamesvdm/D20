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
    @IBOutlet weak var dieBackground: UIImageView!

    @IBAction func d20Tapped(_ sender: Any) {
        d20.setImage(UIImage(named: die20.rollImage()), for: .normal)
        dieBackground.image = dieBackground.image!.withRenderingMode(.alwaysTemplate)
        dieBackground.tintColor = UIColor(
            hue: CGFloat(Float(arc4random_uniform(360))/360),
            saturation: CGFloat(min(Float(arc4random_uniform(100))/100 + 0.2, 1.0)),
            brightness: CGFloat(min(Float(arc4random_uniform(100))/100 + 0.2, 1.0)),
            alpha: 1.0
        )
    }

}
