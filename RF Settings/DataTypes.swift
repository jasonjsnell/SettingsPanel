//
//  DefaultDataTypes.swift
//  RF Settings
//
//  Created by Jason Snell on 10/23/16.
//  Copyright © 2016 Jason J. Snell. All rights reserved.
//

import Foundation

class DataTypes {
    
    //data types
    internal let TYPE_BOOL:String = "bool";
    internal let TYPE_OBJECT:String = "object";
    internal let TYPE_INTEGER:String = "integer";
    
    //singleton code
    static let sharedInstance = DataTypes();
    fileprivate init() {}
    

}
