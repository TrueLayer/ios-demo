//
//  ViewController.swift
//  TruelayerDemo
//
//  Created by Simone D'Amico on 08/05/2017.
//  Copyright © 2017 Simone D'Amico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openTruelayerAuthDialog() {
        let baseURL = "https://auth.truelayer.com/"
        let redirectURI = "https://requestbin.t7r.co/puzrjepv"
        let scopes = "offline_access%20info%20accounts%20transactions%20balance"
        let clientID = "test"
        let url = URL(string: "\(baseURL)?enable_mock=true&response_type=code&response_mode=form_post&client_id=\(clientID)&redirect_uri=\(redirectURI)&scope=\(scopes)&nonce=foo&state=bar");
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }

}
