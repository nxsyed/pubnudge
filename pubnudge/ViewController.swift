//
//  ViewController.swift
//  pubnudge
//
//  Created by Syed Ahmed on 7/16/18.
//  Copyright © 2018 nxsyed. All rights reserved.
//

import UIKit
import PubNub

class ViewController: UIViewController, PNObjectEventListener {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnPushNotif(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError("Where is our app delegate")
        }
        
        let payloads = ["aps" : ["alert" : "To Apple and PN native devices!"]]
        appDelegate.client.publish("Test", toChannel: "cash", mobilePushPayload: payloads,
                            withCompletion: { (status) in

                                print("\(status.debugDescription)")
        })
    }
    
}

