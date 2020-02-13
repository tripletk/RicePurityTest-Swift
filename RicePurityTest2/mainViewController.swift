//
//  mainViewController.swift
//  RicePurityTest2
//
//  Created by Timmy Tseng on 12/17/19.
//  Copyright © 2019 kaungkhantkyaw. All rights reserved.
//

import Foundation
import UIKit

class mainViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        } else {
            // Fallback on earlier versions
        }
    }
    
}



