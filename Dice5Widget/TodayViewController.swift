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
    
    let die20:Dice = Dice(sides: 20, color: "red")
    let die4:Dice = Dice(sides: 4, color: "red")
    let die6:Dice = Dice(sides: 6, color: "red")
    let die8:Dice = Dice(sides: 8, color: "red")
    let die10:Dice = Dice(sides: 10, color: "red")
    let die12:Dice = Dice(sides: 12, color: "red")
    let die100:Dice = Dice(sides: 10, color: "red")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        d20.setImage(UIImage(named: die20.getSide(face: 0)), for: .normal)
        self.extensionContext?.widgetLargestAvailableDisplayMode = NCWidgetDisplayMode.expanded
        // Do any additional setup after loading the view from its nib.
    }
    
    func widgetActiveDisplayModeDidChange(_ activeDisplayMode: NCWidgetDisplayMode, withMaximumSize maxSize: CGSize){
        if (activeDisplayMode == NCWidgetDisplayMode.compact) {
            self.preferredContentSize = maxSize;
        }
        else {
            self.preferredContentSize = CGSize(width: 0, height: 200);
        }
    }
    
    @IBOutlet weak var d20: UIButton!
    @IBOutlet weak var d4: UIButton!
    @IBOutlet weak var d6: UIButton!
    @IBOutlet weak var d10: UIButton!
    @IBOutlet weak var d12: UIButton!
    @IBOutlet weak var d100: UIButton!
    @IBOutlet weak var d8: UIButton!

    
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
        d20.setImage(UIImage(named: die20.rollImage()), for: .normal)
    }

    @IBAction func d4Tapped(_ sender: Any) {
        d4.setImage(UIImage(named: die4.rollImage()), for: .normal)
    }
    
    @IBAction func d6Tapped(_ sender: Any) {
        d6.setImage(UIImage(named: die6.rollImage()), for: .normal)
    }

    @IBAction func d8Tapped(_ sender: Any) {
        d8.setImage(UIImage(named: die8.rollImage()), for: .normal)
    }
    
    @IBAction func d10Tapped(_ sender: Any) {
        d10.setImage(UIImage(named: die10.rollImage()), for: .normal)
    }
    
    @IBAction func d12Tapped(_ sender: Any) {
        d12.setImage(UIImage(named: die12.rollImage()), for: .normal)
    }
    
    @IBAction func d100Tapped(_ sender: Any) {
        let d100Roll = String(arc4random_uniform(10))
        d100.setImage(UIImage(named: "d100_\(d100Roll)"), for: .normal)

    }
    
}
