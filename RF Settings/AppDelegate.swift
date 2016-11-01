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
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

