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
    @IBOutlet weak var darkMode: UISwitch!
    @IBOutlet weak var lblDarkMode: UILabel!
    
    let defaults:UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Settings"
        
//        var darkModeOn = defaults.string(forKey: "DarkModeEnabled")
//
//        if darkModeOn == "true" {
//            fDarkModeOn()
//        }
//        else {
//            fDarkModeOff()
//        }
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
    
    @IBAction func btnDarkMode(_ sender: UISwitch) {
        if darkMode.isOn {
            defaults.set("true", forKey: "DarkModeEnabled")
            fDarkModeOn()
        }
        else {
            defaults.set("false", forKey: "DarkModeEnabled")
            fDarkModeOff()
        }
    }
    
    func fDarkModeOn() {
        
        self.view.backgroundColor = UIColor.black
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.largeTitleTextAttributes =
                [NSForegroundColorAttributeName: UIColor.black]
        }
        lblDarkMode.textColor = UIColor.white
        
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.largeTitleTextAttributes =
                [NSForegroundColorAttributeName: UIColor.white]
            
            
        }
    }
    func fDarkModeOff() {
        
        self.view.backgroundColor = UIColor.white
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.largeTitleTextAttributes =
                [NSForegroundColorAttributeName: UIColor.white]
        }
        lblDarkMode.textColor = UIColor.black
        
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.largeTitleTextAttributes =
                [NSForegroundColorAttributeName: UIColor.black]
            
            
        }
    }
}
