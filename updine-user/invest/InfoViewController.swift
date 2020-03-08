//
//  InfoViewController.swift
//  updine-user
//
//  Created by Helal Chowdhury on 3/8/20.
//  Copyright © 2020 Yasin Ehsan. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {


    @IBOutlet weak var video: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo(videoCode: "7Ueq-Tj9TJs")

 
    }
    
    //play video
    func getVideo(videoCode: String){
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        video.loadRequest(URLRequest(url: url!))
    }


}
