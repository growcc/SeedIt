//
//  ProfileViewController.swift
//  updine-user
//
//  Created by Helal Chowdhury on 3/7/20.
//  Copyright © 2020 Yasin Ehsan. All rights reserved.
//

import UIKit
import SafariServices

class ProfileViewController: UIViewController {

    @IBOutlet weak var joinCall: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func joinCallPressed(_ sender: Any) {
        guard let url = URL(string: "https://hangouts.google.com/call/coYtJmhhuN5CMkLkdxlIAEEE") else {
            return
        }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
        
    }
    


}
