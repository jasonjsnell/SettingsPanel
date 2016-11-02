//
//  SettingsTableViewController.swift
//  RF Settings
//
//  Created by Jason Snell on 8/30/16.
//  Copyright © 2016 Jason J. Snell. All rights reserved.
//


import UIKit

class SetTable: UITableViewController {
    
    //MARK:VARIABLES
    //nav
    internal var nav:UINavigationController!;
    
    //data
    let data:SetData = SetData.sharedInstance;
    let dataTypes:DataTypes = DataTypes.sharedInstance;
    
    //cells types
    internal var DISPLAY_TYPE_SWITCH:String = "displayTypeSwitch";
    internal var DISPLAY_TYPE_DISCLOSURE:String = "displayTypeDisclosure";
    internal var DISPLAY_TYPE_CHECKMARK:String = "displayTypeCheckmark";
    internal var DISPLAY_TYPE_NONE:String = "displayTypeNone";
    
    //styles
    internal var styles:SetStyles = SetStyles.sharedInstance;
    
    internal let debug:Bool = true;
    
    //MARK:-
    //MARK:BUILD
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //init size of view. X is 20 for status bar
        let tableFrame:CGRect = CGRect(x: 0, y: 20, width: self.view.bounds.width, height: self.view.bounds.height);
        tableView = UITableView(frame: tableFrame, style: .grouped);
        
        //set delegate to self
        tableView.delegate = self;
        tableView.dataSource = self;
        
        //styles - use default
        //self.view.backgroundColor = SetStyles.sharedInstance.GREY_LIGHT;
        //tableView.backgroundColor = SetStyles.sharedInstance.GREY_LIGHT;
        
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //override in sub
        return UITableViewCell()
    }
    

    //MARK:-
    //MARK: USER INPUT
    
    //MARK: STYLES (use defaults)
    
    /*
    //add style to hearder
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerCell:UITableViewHeaderFooterView = UITableViewHeaderFooterView(reuseIdentifier: "HeaderCell");
        //headerCell.contentView.backgroundColor = styles.GREY_LIGHT;
        //headerCell.textLabel?.textColor = styles.GREY_MID_DARK;
        //headerCell.textLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return headerCell
        
    }
    
    //add style to footer
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let footerCell:UITableViewHeaderFooterView = UITableViewHeaderFooterView(reuseIdentifier: "FooterCell");
        //footerCell.contentView.backgroundColor = styles.GREY_LIGHT;
        return footerCell
        
    }
     */
    
    
    //MARK:-
    //MARK:MEMORY
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
