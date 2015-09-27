//
//  ViewController.swift
//  MultiplicationTables
//
//  Created by Shani on 9/27/15.
//  Copyright © 2015 Shani Rivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    


    @IBOutlet var sliderValue: UISlider!
    
    @IBOutlet var table: UITableView!
    @IBAction func sliderMoved(sender: AnyObject) {
        table.reloadData()
        
    }
    
    //How many sections are in the table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
        
    }
    
    // Defines the contents of each individual cell, and can change to look of the cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        let timesTable = Int(sliderValue.value * 20)
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

