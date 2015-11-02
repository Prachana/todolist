//
//  FirstViewController.swift
//  To do list
//
//  Created by Rachana Pandey on 11/2/15.
//  Copyright © 2015 anarach. All rights reserved.
//

import UIKit

var todoslist = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if (NSUserDefaults.standardUserDefaults().objectForKey("todolist") != nil){
        todoslist = NSUserDefaults.standardUserDefaults().objectForKey("todolist") as! [String]
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    
        
        return todoslist.count
    
    
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text = todoslist[indexPath.row]
        return cell
        
        
    }
    
    // swiping the table cell
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
        
        todoslist.removeAtIndex(indexPath.row)
        NSUserDefaults.standardUserDefaults().setObject(todoslist, forKey: "todolist")
        
            tableView.reloadData()
            
        }
    
    }
    
    // updating everytime the the view is loaded 
    
    override func viewDidAppear(animated: Bool) {
        
        tableview.reloadData()
        
    }



}

