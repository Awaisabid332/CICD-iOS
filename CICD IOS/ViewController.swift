//
//  ViewController.swift
//  CICD IOS
//
//  Created by AWS Macbook on 09/08/2022.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func crashBtnTapped(_ sender: Any) {
        Crashes.generateTestCrash()
    }
    
    @IBAction func btnEventTapped(_ sender: Any) {
        Analytics.trackEvent("Custome_Event", withProperties: ["Name": "Test"])
    }
}

