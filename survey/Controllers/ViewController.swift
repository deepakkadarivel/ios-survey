//
//  ViewController.swift
//  survey
//
//  Created by Deepakkv on 7/26/17.
//  Copyright © 2017 droidinlabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mockTopics: Array<Topic>?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mockTopics = getTopics()
        for topic in mockTopics! {
            print("topic : \(topic)")
            print(topic.subtopics?[0].name ?? "")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

