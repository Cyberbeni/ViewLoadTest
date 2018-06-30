//
//  XibViewController.swift
//  ViewLoadTest
//
//  Created by Benedek Kozma on 2018. 06. 30..
//  Copyright © 2018. Benedek Kozma. All rights reserved.
//

import UIKit

class XibViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let loadTime = -Globals.screenLoadStartTime.timeIntervalSinceNow
        textLabel.text = "Xib load time: \(loadTime) seconds"
        
        let barButton = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextScreen))
        self.navigationItem.rightBarButtonItem = barButton
    }
    
    @objc func nextScreen() {
        Globals.screenLoadStartTime = Date()
        let storyboard = UIStoryboard(name: "Storyboard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "StoryboardViewController")
        self.navigationController?.pushViewController(vc, animated: false)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
