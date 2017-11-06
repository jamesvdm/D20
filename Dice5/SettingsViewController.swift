//
//  SettingsViewController.swift
//  Dice5
//
//  Created by James van der Moezel on 22/8/17.
//  Copyright © 2017 James van der Moezel. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var blueDie: UIButton!
    @IBOutlet weak var inverseDie: UIButton!
    @IBOutlet weak var greyDie: UIButton!
    @IBOutlet weak var blackDie: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Settings"
        
    }

    @IBAction func btnBlueDie(_ sender: UIButton) {
        if #available(iOS 10.3, *) {
            UIApplication.shared.setAlternateIconName(nil)
        } else {
            // Fallback on earlier versions
        }

    }

    @IBAction func btnRedDie(_ sender: UIButton) {
        if #available(iOS 10.3, *) {
            UIApplication.shared.setAlternateIconName("Inverse")
        } else {
            // Fallback on earlier versions
        }
    }

    @IBAction func btnGreyDie(_ sender: UIButton) {
        
        if #available(iOS 10.3, *) {
            UIApplication.shared.setAlternateIconName("Grey")
        } else {
        }
    }
    
    @IBAction func btnBlackDie(_ sender: UIButton) {
        if #available(iOS 10.3, *) {
            UIApplication.shared.setAlternateIconName("Black")
        } else {
        }
    }
}

