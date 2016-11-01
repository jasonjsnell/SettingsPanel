//
//  ViewController.swift
//  RF Settings
//
//  Created by Jason Snell on 8/28/16.
//  Copyright © 2016 Jason J. Snell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let settingsMain:SetMain = SetMain();
        self.view.addSubview(settingsMain.view)
        
        
        let nav:UINavigationController = UINavigationController();
        nav.viewControllers = [settingsMain];
        settingsMain.nav = nav;
        self.view.addSubview(nav.view);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

