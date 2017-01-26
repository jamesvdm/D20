//
//  ViewController.swift
//  Dice5
//
//  Created by James van der Moezel on 25/1/17.
//  Copyright © 2017 James van der Moezel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var d20: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func d20Tapped(_ sender: Any) {
        let d20Roll = String(arc4random_uniform(20))
        d20.setImage(UIImage(named: "d20_\(d20Roll)"), for: .normal)

    }

}

