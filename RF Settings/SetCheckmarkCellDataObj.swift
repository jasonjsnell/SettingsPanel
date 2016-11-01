//
//  DefaultBoolData.swift
//  RF Settings
//
//  Created by Jason Snell on 10/23/16.
//  Copyright © 2016 Jason J. Snell. All rights reserved.
//
//object that appears in sub array of a data object. This contains values instead of keys and is used to populate checkmark cells

import Foundation

class SetCheckmarkCellDataObj:SetCellDataObj {
    
    //MARK:-
    //MARK:VARIABLES
    
    internal var value:Any = "";
    internal var selected:Bool = false;
    
    //MARK:-
    //MARK:INIT
    init(key:String, value:Any, selected:Bool, label:String, type:String){
        
        //the key in this class is the parent key, the key that these values assign to
        super.init(key: key ,label: label, type: type);
        self.value = value;
        self.selected = selected;
        
    }
    

    
}
