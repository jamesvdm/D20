//
//  SettingsViewController.swift
//  Dice5
//
//  Created by James van der Moezel on 22/8/17.
//  Copyright © 2017 James van der Moezel. All rights reserved.
//

import UIKit
import StoreKit

class SettingsViewController: UIViewController, SKProductsRequestDelegate, SKPaymentTransactionObserver {

    @IBOutlet weak var blueDie: UIButton!
    @IBOutlet weak var inverseDie: UIButton!
    @IBOutlet weak var greyDie: UIButton!
    @IBOutlet weak var blackDie: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Alternative Icons"
        
        let defaults:UserDefaults = UserDefaults.standard

        if defaults.bool(forKey: "IAPCompleted") == true {
            inverseDie.isEnabled = true
            greyDie.isEnabled = true
            blackDie.isEnabled = true
        } else {
            inverseDie.isEnabled = false
            greyDie.isEnabled = false
            blackDie.isEnabled = false
        }
        
        if(SKPaymentQueue.canMakePayments()) {
            let productID: NSSet = NSSet(objects: "app_icon_change")
            let request: SKProductsRequest = SKProductsRequest(productIdentifiers: productID as! Set<String>)
            request.delegate = self
            request.start()
        } else {
            print("Please enable IAP")}
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
    @IBAction func btnBuy(_ sender: UIButton) {
        
        for product in list {
            let prodID = product.productIdentifier
            if(prodID == "app_icon_change") {
                p = product
                buyProduct()
                
            }
        }
    }
    
    var list = [SKProduct]()
    var p = SKProduct()
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        print("Product request")
        let myProduct = response.products
        for product in myProduct {
            print("product added")
            print(product.productIdentifier)
            print(product.localizedTitle)
            print(product.localizedDescription)
            print(product.price)
            
            list.append(product)
        }
    }
    
    func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue) {
        print("transaction restore")
        for transaction in queue.transactions {
            let t: SKPaymentTransaction = transaction
            let prodID = t.payment.productIdentifier as String
            let defaults:UserDefaults = UserDefaults.standard
            switch prodID {
            case "app_icon_change":
                print("Restored Successfully")
                inverseDie.isEnabled = true
                greyDie.isEnabled = true
                blackDie.isEnabled = true
                defaults.set(true, forKey:"IAPCompleted")
            default:
                print("iap not found")
            }
        }
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        print("Add payment")
        
        for transaction: AnyObject in transactions {
            let trans = transaction as! SKPaymentTransaction
            //print(trans.error)
            let defaults:UserDefaults = UserDefaults.standard
            switch trans.transactionState {
            case .purchased:
                print("unlock iap ok")
                print(p.productIdentifier)
                
                let prodID = p.productIdentifier
                switch prodID {
                case "app_icon_change":
                    print("remove ads")
                    inverseDie.isEnabled = true
                    greyDie.isEnabled = true
                    blackDie.isEnabled = true
                    defaults.set(true, forKey:"IAPCompleted")
                default:
                    print("iap not found")
                }
                queue.finishTransaction(trans)
            case .failed:
                print("buy error")
                queue.finishTransaction(trans)
                break
            default:
                print("default")

            }
        }
    }
    
    func buyProduct() {
        print("Buy" + p.productIdentifier)
        let pay = SKPayment(product: p)
        SKPaymentQueue.default().add(self)
        SKPaymentQueue.default().add(pay as SKPayment)
    }

}

