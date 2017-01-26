//
//  TodayViewController.swift
//  Dice5Widget
//
//  Created by James van der Moezel on 25/1/17.
//  Copyright © 2017 James van der Moezel. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
    @IBOutlet weak var d20: UIButton!
    @IBOutlet weak var d4: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }

    @IBAction func d20Button(_ sender: Any) {
        let d20Roll = String(arc4random_uniform(20))
        d20.setImage(UIImage(named: "d20_\(d20Roll)"), for: .normal)
    }
    @IBAction func d4Button(_ sender: Any) {
        let d4Roll = String(arc4random_uniform(4))
        d4.setImage(UIImage(named: "d4_\(d4Roll)"), for: .normal)
    }
    

    
}
