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
        
        iCarouselView.type = .cylinder
        iCarouselView.contentMode = .scaleAspectFill
        iCarouselView.isPagingEnabled = true
        

    }
    
    @IBAction func joinCallPressed(_ sender: Any) {
        guard let url = URL(string: "https://hangouts.google.com/call/coYtJmhhuN5CMkLkdxlIAEEE") else {
            return
        }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
        
    }
    
    
    @IBOutlet weak var iCarouselView: iCarousel!
    
    var companies = [
        UIImage(named: "wincCard"),
        UIImage(named: "smileloveCard"),
        UIImage(named: "tripActionsCard"),
        UIImage(named: "latchCard")
    ]
    


}

extension ProfileViewController: iCarouselDelegate, iCarouselDataSource {
    func numberOfItems(in carousel: iCarousel) -> Int {
        return companies.count
    }

    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        var imageView: UIImageView!
        
        if view == nil{
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 327, height: 297))
            imageView.contentMode = .scaleAspectFit
        } else {
            imageView = view as? UIImageView
        }
        imageView.image = companies[index]
        return imageView
    }


}
