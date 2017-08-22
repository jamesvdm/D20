//
//  SettingsViewController.swift
//  Dice5
//
//  Created by James van der Moezel on 22/8/17.
//  Copyright © 2017 James van der Moezel. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
            UIApplication.shared.setAlternateIconName("AppIcon-2")
        } else {
            // Fallback on earlier versions
        }

    }

}
