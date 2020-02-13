//
//  infoTableViewController.swift
//  RicePurityTest
//
//  Created by Timmy Tseng on 12/21/19.
//  Copyright © 2019 kaungkhantkyaw. All rights reserved.
//

import Foundation
import UIKit

class infoTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let sections = ["Information and Disclaimer"]
    let infoText = ["The items on this application’s Rice Purity Test are from http://ricepuritytest.com and might have some modifications from those found on that site. Kaung Khant Kyaw and this application are in no way affiliated with the University of Rice, the original researchers, or any other online Rice Purity test found online.", "Rice purity test is a test created by Rice University in 1924 for the purpose of checking the maturity level and building a good bonding of their fresher students with their seniors. The data was used for the research purposes. Texas-based University of Rice is trying to research more about the intimate life of a human being. This application is not going to reveal your information or data and is not affiliated with that research.", "Rice Purity Test the App and its developers are in no way affiliated with the University of Rice, its researchers and other Rice Purity Score Tests found elsewhere.", "Please note that the information provided on this app and other related properties are for informational purposes only.The information is provided by various online sources and whilst we endeavor to keep the information up-to-date and correct, we make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the app or the information, products, services, or related graphics contained on the app for any purpose. Any reliance you place on such information is therefore strictly at your own risk.In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of or in connection with the use of this app. To the full extent permissible by applicable law, Rice Purity Test app disclaims all warranties, express or implied, including, but not limited to, the implied warranties and/or conditions of merchantability or satisfactory quality and fitness for a particular purpose and non-infringement. Rice Purity Test app will not be liable for any damages of any kind arising from the use of the site, including, but not limited to direct, indirect, incidental, punitive and consequential damages. Rice Purity Test app does not warrant that the site, or the server that makes it available, is free of viruses or other harmful components.", "Developed by Kyaw Tech. Copyright 2020, Developers: Kaung Khant Kyaw"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Overriding Dark mode in iOS 13 and newer
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        } else {
            // Fallback on earlier versions
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.rowHeight = UITableView.automaticDimension
        return UITableView.automaticDimension
    }
    
    // MARK: UITableViewDataSource
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell "PlainCell"
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "InfoPlainCell", for: indexPath)
        // Depending on the section, fill the textLabel with the relevant text
        cell2.textLabel?.text = infoText[indexPath.row]
        cell2.textLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell2.textLabel?.numberOfLines = 0
        // Return the configured cell
        return cell2
    }
    
    
}



