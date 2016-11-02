//
//  AppDelegate.swift
//  RF Settings
//
//  Created by Jason Snell on 8/28/16.
//  Copyright © 2016 Jason J. Snell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    fileprivate let defaults:UserDefaults = UserDefaults.standard;


    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //init defaults if they have no value yet
        
        //if the first midi channel is nil, values haven't been set yet
        if (defaults.object(forKey: "instr_0_out") == nil){
            
            //set all to defaults
            defaults.set(false, forKey: "bg_photo");
            defaults.set(true, forKey: "info_display");
            defaults.set(true, forKey: "midi_send_enabled");
            defaults.set(false, forKey: "midi_receive_enabled");
            defaults.set("midi_clock_none", forKey: "midi_sync");
            defaults.set(0, forKey: "instr_0_out");
            defaults.set(1, forKey: "instr_1_out");
            defaults.set(2, forKey: "instr_2_out");
            defaults.set(3, forKey: "instr_3_out");
            defaults.set(4, forKey: "instr_4_out");
            defaults.set(5, forKey: "instr_5_out");
            defaults.set(6, forKey: "instr_6_out");
            
        }
        
        return true
    }

   

}

