//
//  ViewController.swift
//  HandlingNotification
//
//  Created by Kushagra Gupta on 11/08/16.
//  Copyright © 2016 Kushagra Gupta. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendNotification(sender: AnyObject) {
        
        let notification = UILocalNotification()
        notification.fireDate = NSDate(timeIntervalSinceNow: 5)
        notification.alertBody = "Handling Notification"
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.userInfo = ["DATA": "Notification Created"]
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
}

