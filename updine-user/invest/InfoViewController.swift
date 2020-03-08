//
//  InfoViewController.swift
//  updine-user
//
//  Created by Helal Chowdhury on 3/8/20.
//  Copyright © 2020 Yasin Ehsan. All rights reserved.
//

import UIKit
import EventKit

class InfoViewController: UIViewController {


    @IBOutlet weak var video: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo(videoCode: "vsJO1Ko4gb4")

 
    }
    
    //play video
    func getVideo(videoCode: String){
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        video.loadRequest(URLRequest(url: url!))
    }

    @IBAction func contactClicked(_ sender: Any) {
            let eventStore:EKEventStore = EKEventStore()
    
            eventStore.requestAccess(to: .event) {(granted, error) in
                if (granted) && (error) == nil
                {
                    print("granted \(granted)")
                    print("error \(error)")
    
                    let event:EKEvent = EKEvent(eventStore: eventStore)
                    event.title = "Investment Meeting Winc CEO"
                    event.startDate = Date()
                    event.endDate = Date()
                    event.notes = ""
                    event.calendar = eventStore.defaultCalendarForNewEvents
                    do {
                        try eventStore.save(event, span: .thisEvent)
                    } catch let error as NSError{
                        print("error : \(error)")
                    }
                    print("Save Event")
                } else{
                    print("error : \(error)")
                }
    
            }
    }
    
}
