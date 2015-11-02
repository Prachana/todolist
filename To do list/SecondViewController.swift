//
//  SecondViewController.swift
//  To do list
//
//  Created by Rachana Pandey on 11/2/15.
//  Copyright © 2015 anarach. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var textfeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func addButton(sender: AnyObject) {
        
        
        todoslist.append(textfeild.text!)
        textfeild.text = " "
        
        NSUserDefaults.standardUserDefaults().setObject(todoslist, forKey: "todolist")
        
        
    }
    // tap outside the keyboard so it goes away
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
     func textFieldShouldReturn(textField: UITextField) -> Bool
     {
        textfeild.resignFirstResponder()
        return true
    }
    
}

