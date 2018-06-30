//
//  StoryboardViewController.swift
//  ViewLoadTest
//
//  Created by Benedek Kozma on 2018. 06. 30..
//  Copyright © 2018. Benedek Kozma. All rights reserved.
//

import UIKit

class StoryboardViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loadTime = -Globals.screenLoadStartTime.timeIntervalSinceNow
        textLabel.text = "Storyboard load time: \(loadTime) seconds"
        
        let barButton = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextScreen))
        self.navigationItem.rightBarButtonItem = barButton
    }
    
    @objc func nextScreen() {
        Globals.screenLoadStartTime = Date()
        let vc = CodeViewController()
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
