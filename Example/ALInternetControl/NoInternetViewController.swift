//
//  NoInternetViewController.swift
//  ALInternetControl_Example
//
//  Created by Soner Güler on 20.05.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class NoInternetViewController: UIViewController {
    
    var label: UILabel = {
        let lbl = UILabel()
        lbl.text = "No Connection. Please connect to Internet"
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 25, weight: .black)
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        view.backgroundColor = .lightGray
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        label.frame = view.frame
    }
}
