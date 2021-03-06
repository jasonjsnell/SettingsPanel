//
//  SettingsCheckmarkCell.swift
//  RF Settings
//
//  Created by Jason Snell on 10/22/16.
//  Copyright © 2016 Jason J. Snell. All rights reserved.
//

import UIKit

class SetCheckmarkCell: SetCell {
    
    init(style: UITableViewCellStyle, reuseIdentifier: String?, data:SetCheckmarkCellDataObj){
        
        super.init(style:style, reuseIdentifier:reuseIdentifier, data:data);
        
        //check default and set this cell to checkmark or none
        
        if (data.selected){
            self.accessoryType = .checkmark
        } else {
            self.accessoryType = .none
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder);
    }
    
    
}

