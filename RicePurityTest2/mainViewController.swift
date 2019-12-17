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
    
    @IBOutlet weak var infoButton: UIBarButtonItem!
    @IBOutlet weak var infoRightButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func infoButtonAction(_ sender: Any) {
        var info:String = ""
        
        // Get clicked button title label text.
        
        //info = "test"
        info = "Developer: Kaung Khant Kyaw.\nThis app was developed as a small project to bring the online Rice Purity Test to the iPhone.\nWhat is the Rice Purity Test?\nRice Purity Test is a college-level survey created by Rice University in 1924 for a student to check the purity and innocence of a student and making a good bonding with their seniors, it has been designed by collecting hundred very personal and sensational question about human life related to drugs, sex, alcohol, and many more naughty activities.\nDisclaimer:\nPlease note that the information provided on this app and other related properties are for informational purposes only.The information is provided by various online sources and whilst we endeavor to keep the information up-to-date and correct, we make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the app or the information, products, services, or related graphics contained on the app for any purpose. Any reliance you place on such information is therefore strictly at your own risk.In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of or in connection with the use of this app. To the full extent permissible by applicable law, Rice Purity Test app disclaims all warranties, express or implied, including, but not limited to, the implied warranties and/or conditions of merchantability or satisfactory quality and fitness for a particular purpose and non-infringement. Rice Purity Test app will not be liable for any damages of any kind arising from the use of the site, including, but not limited to direct, indirect, incidental, punitive and consequential damages. Rice Purity Test app does not warrant that the site, or the server that makes it available, is free of viruses or other harmful components."
        
        // Create a UIAlertController object, you should provide title, alert message and dialog stype parameter.
        let alertController:UIAlertController = UIAlertController(title: "Information:", message: info, preferredStyle: UIAlertController.Style.alert)
        
        // Create a UIAlertAction object, this object will add a button at alert dialog bottom, the button text is OK, when click it just close the alert dialog.
        let alertAction:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil)
        
        // Add alertAction object to alertController.
        alertController.addAction(alertAction)
        // Popup the alert dialog.
        present(alertController, animated: true, completion: nil)

    }
    @IBAction func infoRightButtonAction(_ sender: Any) {
        
        //var info:String = ""
        
        // Get clicked button title label text.
        
        //info = "test"
        let info = "Developer: Kaung Khant Kyaw.\nThis app was developed as a small project to bring the online Rice Purity Test to the iPhone.\nWhat is the Rice Purity Test?\nRice Purity Test is a college-level survey created by Rice University in 1924 for a student to check the purity and innocence of a student and making a good bonding with their seniors, it has been designed by collecting hundred very personal and sensational question about human life related to drugs, sex, alcohol, and many more naughty activities.\nDisclaimer:\nPlease note that the information provided on this app and other related properties are for informational purposes only.The information is provided by various online sources and whilst we endeavor to keep the information up-to-date and correct, we make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the app or the information, products, services, or related graphics contained on the app for any purpose. Any reliance you place on such information is therefore strictly at your own risk.In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of or in connection with the use of this app. To the full extent permissible by applicable law, Rice Purity Test app disclaims all warranties, express or implied, including, but not limited to, the implied warranties and/or conditions of merchantability or satisfactory quality and fitness for a particular purpose and non-infringement. Rice Purity Test app will not be liable for any damages of any kind arising from the use of the site, including, but not limited to direct, indirect, incidental, punitive and consequential damages. Rice Purity Test app does not warrant that the site, or the server that makes it available, is free of viruses or other harmful components."
        
        // Create a UIAlertController object, you should provide title, alert message and dialog stype parameter.
        let alertController:UIAlertController = UIAlertController(title: "Information:", message: info, preferredStyle: UIAlertController.Style.alert)
        
        // Create a UIAlertAction object, this object will add a button at alert dialog bottom, the button text is OK, when click it just close the alert dialog.
        let alertAction:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil)
        
        // Add alertAction object to alertController.
        alertController.addAction(alertAction)
        // Popup the alert dialog.
        present(alertController, animated: true, completion: nil)
    }
}



