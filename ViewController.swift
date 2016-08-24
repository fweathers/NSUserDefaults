//
//  ViewController.swift
//  NSUserDefaults
//
//  Created by Felicia Weathers on 7/30/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NSUserDefaults.standardUserDefaults().setObject("Felicia", forKey: "name")
//
//        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")
//        
//        print(userName)

        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! NSString
        
        print(userName)
        
        let arr = [1, 2, 3, 4]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        
        // as! NSArray changes the array from `anyObject` to NSArray
        let returnedArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        for x in arr {
            
            print(x)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

