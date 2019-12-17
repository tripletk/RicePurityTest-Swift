//
//  tableView.swift
//  RicePurityTest2
//
//  Created by Timmy Tseng on 12/17/19.
//  Copyright © 2019 kaungkhantkyaw. All rights reserved.
//

import Foundation
import UIKit

class tableView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let sections = ["Fruit", "Vegetables"]
    let fruit = ["Apple", "Orange", "Mango"]
    let vegetables = ["Carrot", "Broccoli", "Cucumber"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: UITableViewDataSource
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            // Fruit Section
            return fruit.count
        case 1:
            // Vegetable Section
            return vegetables.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell "PlainCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlainCell", for: indexPath)
        // Depending on the section, fill the textLabel with the relevant text
        switch indexPath.section {
        case 0:
            // Fruit Section
            cell.textLabel?.text = fruit[indexPath.row]
            break
        case 1:
            // Vegetable Section
            cell.textLabel?.text = vegetables[indexPath.row]
            break
        default:
            break
        }
        
        // Return the configured cell
        return cell
    }
    
}
