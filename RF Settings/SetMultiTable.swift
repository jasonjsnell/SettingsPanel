//
//  SettingsTableViewController.swift
//  RF Settings
//
//  Created by Jason Snell on 8/30/16.
//  Copyright © 2016 Jason J. Snell. All rights reserved.
//


import UIKit

class SetMultiTable: SetTable {
    
    //MARK:VARIABLES
    
    internal var sectionTitles:[String] = [""];
    internal var cellKeys:[[String]] = [[""]];
    internal var cellDisplayTypes:[[String]] = [[""]];
    
    //MARK:-
    //MARK:BUILD
    
    // number of section(s)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return cellKeys.count;
    }
    
    //number of rows in each section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellKeys[section].count;
    }
    
    
    //title text in each section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section];
    }
    
    //build out rows
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //get id and create cell row
        let cellKey:String = cellKeys[indexPath.section][indexPath.row]
        
        //get cell data
        if let cellDataObj:SetCellDataObj = data.getDataObjForKey(cellKey) {
            
            //get display type and return a custom cell based on it
            let displayType:String = cellDisplayTypes[(indexPath as NSIndexPath).section][(indexPath as NSIndexPath).row]
            
            //toggle switch
            if (displayType == DISPLAY_TYPE_SWITCH){
                
                return SetToggleCell(
                    style: .default,
                    reuseIdentifier: cellKey,
                    data: cellDataObj)
                
                //disclosure arrow - leads to subview
            } else if (displayType == DISPLAY_TYPE_DISCLOSURE){
                
                return SetDisclosureCell(
                    style: .value1,
                    reuseIdentifier: cellKey,
                    data: cellDataObj as! SetDisclosureCellDataObj)
                
                //checkmark - off and on
            } else {
                if (debug){
                    print("SETTINGS: Error determining cell display type");
                }
                return UITableViewCell()
            }
            
            //else return generic empty cell
        } else {
            if (debug){
                print("SETTINGS: Error accessing cell data object");
            }
            return UITableViewCell()
        }

        
        
    }
    
    //MARK:-
    //MARK: USER INPUT
    
    //user taps row
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("multi tap - THIS IS NOT TRIGGERING - SetMultiTable didSelectRowAt...")
        
        //override in instance
        let cell:SetCell = tableView.cellForRow(at: indexPath) as! SetCell
            
        //change color of highlight
        let highlightCell:UIView = UIView(frame:cell.frame)
        //highlightCell.backgroundColor = styles.GREY_DARK
        cell.selectedBackgroundView =  highlightCell;

        //deselect row so the grey background flashes
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
     */
    
    
}
