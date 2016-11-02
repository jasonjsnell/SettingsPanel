//
//  SettingsDisclosureCell.swift
//  RF Settings
//
//  Created by Jason Snell on 10/22/16.
//  Copyright © 2016 Jason J. Snell. All rights reserved.
//

import UIKit

class SetDisclosureCell: SetCell {
    
    
    init(style: UITableViewCellStyle, reuseIdentifier: String?, data:SetDisclosureCellDataObj){
        
        super.init(style:style, reuseIdentifier:reuseIdentifier, data:data);
    
        self.accessoryType = .disclosureIndicator
        self.detailTextLabel?.text = data.defaultLabel
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder);
    }
    
    //updates text back on the disclosure cell display that opened the new table
    internal func updateDefaultLabelDisplay(){
        self.detailTextLabel?.text = (data as! SetDisclosureCellDataObj).defaultLabel;
    }
    
    
}

