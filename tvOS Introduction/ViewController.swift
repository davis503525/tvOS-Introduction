//
//  ViewController.swift
//  tvOS Introduction
//
//  Created by Davis Allie on 17/09/2015.
//  Copyright © 2015 Davis Allie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: nil)
        
        cell.textLabel?.text = "Item \(indexPath.row + 1)"
        cell.detailTextLabel?.text = "Subtitle \(indexPath.row + 1)"
        
        return cell
    }
    
    override var preferredFocusedView: UIView? {
        return self.view.subviews[0]
    }

    func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        if indexPath.row == 1 {
            return false
        }
        
        return true
    }
}

