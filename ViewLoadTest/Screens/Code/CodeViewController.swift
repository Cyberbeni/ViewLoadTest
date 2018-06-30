//
//  CodeViewController.swift
//  ViewLoadTest
//
//  Created by Benedek Kozma on 2018. 06. 30..
//  Copyright © 2018. Benedek Kozma. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {
    
    var codeView: CodeView {
        return self.view as! CodeView
    }
    
    override func loadView() {
        self.view = CodeView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let loadTime = -Globals.screenLoadStartTime.timeIntervalSinceNow
        codeView.label.text = "Code load time: \(loadTime) seconds"
        
        let barButton = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextScreen))
        self.navigationItem.rightBarButtonItem = barButton
    }
    @objc func nextScreen() {
        Globals.screenLoadStartTime = Date()
        let vc = XibViewController(nibName: "XibViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: false)
    }

}
