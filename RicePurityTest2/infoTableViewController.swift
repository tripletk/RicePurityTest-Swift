//
//  infoTableViewController.swift
//  RicePurityTest2
//
//  Created by Timmy Tseng on 12/21/19.
//  Copyright © 2019 kaungkhantkyaw. All rights reserved.
//

import Foundation
import UIKit

class infoTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let sections = ["Information"]
    let infoText = ["The items on this application’s Rice Purity Test are from http://ricepuritytest.com and might have some modifications from those found on that site. Kaung Khant Kyaw and this application are in no way affiliated with the University of Rice, the original researchers, or any other online Rice Purity test found online.", "Rice purity test is a test created by Rice University in 1924 for the purpose of checking the maturity level and building a good bonding of their fresher students with their seniors. The data was used for the research purposes. Texas-based University of Rice is trying to research more about the intimate life of a human being. This application is not going to reveal your information or data and is not affiliated with that research.", "Rice Purity Test the App and its developers are in no way affiliated with the University of Rice, its researchers and other Rice Purity Score Tests found elsewhere.","Developed by Kyaw Tech. Copyright 2020, Developers: Kaung Khant Kyaw" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        //tableView.allowsMultipleSelection = true
        
        //cell.accessoryType = UITableViewCell.AccessoryType.checkmark
        // cell.accessoryType = UITableViewCell.AccessoryType ? .checkmark : .none
        
        cell2.textLabel?.text = infoText[indexPath.row]
        cell2.textLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell2.textLabel?.numberOfLines = 0
        // Return the configured cell
        return cell2
    }
    
    
}



