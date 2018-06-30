//
//  CodeView.swift
//  ViewLoadTest
//
//  Created by Benedek Kozma on 2018. 06. 30..
//  Copyright © 2018. Benedek Kozma. All rights reserved.
//

import UIKit

class CodeView: UIView {
    let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 8.0)
            ])
    }
    
    convenience required init?(coder aDecoder: NSCoder) {
        self.init(frame: .zero)
    }

}
