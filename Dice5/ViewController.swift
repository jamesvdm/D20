//
//  ViewController.swift
//  Dice5
//
//  Created by James van der Moezel on 25/1/17.
//  Copyright © 2017 James van der Moezel. All rights reserved.
//

import UIKit
import StoreKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.title = "Critical Hit"
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = true
        } else {
            // Fallback on earlier versions
        }

        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.largeTitleTextAttributes =
                [NSForegroundColorAttributeName: UIColor.white]
        } else {
            self.navigationController?.navigationBar.titleTextAttributes =
                [NSForegroundColorAttributeName: UIColor.white]
        }
    }
    
    let die20:Dice = Dice(sides: 20)
    let die4:Dice = Dice(sides: 4)
    let die6:Dice = Dice(sides: 6)
    let die8:Dice = Dice(sides: 8)
    let die10:Dice = Dice(sides: 10)
    let die12:Dice = Dice(sides: 12)
    let die100:Dice = Dice(sides: 10)
    
    var Sum = 0
    
    let generator = UIImpactFeedbackGenerator(style: .medium)

    @IBOutlet weak var d20: UIButton!
    @IBOutlet weak var d4: UIButton!
    @IBOutlet weak var d6: UIButton!
    @IBOutlet weak var d8: UIButton!
    @IBOutlet weak var d10: UIButton!
    @IBOutlet weak var d12: UIButton!
    @IBOutlet weak var d100: UIButton!

    @IBOutlet weak var labelSum: UILabel!
    @IBOutlet weak var buttonReset: UIButton!
    
    @IBAction func resetTapped(_ sender: UIButton) {
        labelSum.text = String(0)
        Sum = 0
        d20.setImage(UIImage(named: "d20_20"), for: .normal)
        d4.setImage(UIImage(named: "d4_4"), for: .normal)
        d6.setImage(UIImage(named: "d6_6"), for: .normal)
        d8.setImage(UIImage(named: "d8_8"), for: .normal)
        d10.setImage(UIImage(named: "d10_10"), for: .normal)
        d12.setImage(UIImage(named: "d12_12"), for: .normal)
        d100.setImage(UIImage(named: "d100_0"), for: .normal)
    }
    
    @IBAction func d20Tapped(_ sender: Any) {
        generator.impactOccurred()
        let roll = die20.roll()
        d20.setImage(UIImage(named: "d20_\(roll)"), for: .normal)
        Sum = Sum + roll
        print(roll)
        labelSum.text = String(Sum)
    }
   
    @IBAction func d4Tapped(_ sender: Any) {
        generator.impactOccurred()
        let roll = die4.roll()
        d4.setImage(UIImage(named: "d4_\(roll)"), for: .normal)
        Sum = Sum + roll
        print(roll)
        labelSum.text = String(Sum)
    }

    @IBAction func d6Tapped(_ sender: Any) {
        generator.impactOccurred()
        let roll = die6.roll()
        d6.setImage(UIImage(named: "d6_\(roll)"), for: .normal)
        Sum = Sum + roll
        print(roll)
        labelSum.text = String(Sum)
    }
    
    @IBAction func d8Tapped(_ sender: Any) {
        generator.impactOccurred()
        let roll = die8.roll()
        d8.setImage(UIImage(named: "d8_\(roll)"), for: .normal)
        Sum = Sum + roll
        print(roll)
        labelSum.text = String(Sum)
    }
    
    @IBAction func d10Tapped(_ sender: Any) {
        generator.impactOccurred()
        let roll = die10.roll()
        d10.setImage(UIImage(named: "d10_\(roll)"), for: .normal)
        Sum = Sum + roll
        print(roll)
        labelSum.text = String(Sum)
    }
    
    @IBAction func d12Tapped(_ sender: Any) {
        generator.impactOccurred()
        let roll = die12.roll()
        d12.setImage(UIImage(named: "d12_\(roll)"), for: .normal)
        Sum = Sum + roll
        print(roll)
        labelSum.text = String(Sum)
    }
    
    @IBAction func d100Tapped(_ sender: Any) {
        generator.impactOccurred()
        let d100Roll = arc4random_uniform(100) + 1
        Sum = Sum + Int(d100Roll)
        labelSum.text = String(Sum)
        d100.setImage(UIImage(named: "d100_\(Int(floor(Double((d100Roll)/10)*10)))"), for: .normal)
        print(d100Roll)
        print(Int(floor(Double((d100Roll)/10)*10)))
    }
}
