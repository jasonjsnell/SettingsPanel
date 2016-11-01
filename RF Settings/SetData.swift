//
//  DefaultsData.swift
//  RF Settings
//
//  Created by Jason Snell on 10/22/16.
//  Copyright © 2016 Jason J. Snell. All rights reserved.
//

import Foundation

class SetData {
    
    //singleton code
    static let sharedInstance = SetData();

    //MARK:-
    //MARK:VARIABLES
    
    //data types
    internal let types:DataTypes = DataTypes.sharedInstance;
    
    //data objs
    internal var dataObjs:[SetCellDataObj] = [];
    
    //top level keys
    internal let KEY_BG_PHOTO:String = "bg_photo";
    internal let KEY_INFO_DISPLAY:String = "info_display";
    
    internal let KEY_MIDI_SEND_ENABLED:String = "midi_send_enabled";
    internal let KEY_MIDI_RECEIVE_ENABLED:String = "midi_receive_enabled";
    internal let KEY_MIDI_SYNC:String = "midi_sync";
    
    internal let KEY_INSTR_OUTS:[String] =
        ["instr_0_out",
         "instr_1_out",
         "instr_2_out",
         "instr_3_out",
         "instr_4_out",
         "instr_5_out",
         "instr_6_out"
    ]

    
    //sub level keys
    internal let KEY_MIDI_CLOCK_RECEIVE:String = "midi_clock_receive";
    internal let KEY_MIDI_CLOCK_SEND:String = "midi_clock_send";
    internal let KEY_MIDI_CLOCK_NONE:String = "midi_clock_none";
    
    //MARK:-
    //MARK: INIT
    fileprivate init() {
        
        //bool objects
        let bgPhoto:SetCellDataObj = SetCellDataObj(
            key: KEY_BG_PHOTO,
            label: "Background Photo",
            type: types.TYPE_BOOL);
       
        let infoDisplay:SetCellDataObj = SetCellDataObj(
            key: KEY_INFO_DISPLAY,
            label: "Information Display",
            type: types.TYPE_BOOL);
        
        let midiSend:SetCellDataObj = SetCellDataObj(
            key: KEY_MIDI_SEND_ENABLED,
            label: "MIDI Send",
            type: types.TYPE_BOOL);
        
        let midiReceive:SetCellDataObj = SetCellDataObj(
            key: KEY_MIDI_RECEIVE_ENABLED,
            label: "MIDI Receive",
            type: types.TYPE_BOOL);
        
        //simple multi object (3 options)
        let midiSync:SetDisclosureCellDataObj = SetDisclosureCellDataObj(
            key: KEY_MIDI_SYNC,
            label: "MIDI Sync",
            type: types.TYPE_OBJECT);
        
        midiSync.initSubArrays(
            values:[KEY_MIDI_CLOCK_RECEIVE, KEY_MIDI_CLOCK_SEND, KEY_MIDI_CLOCK_NONE],
            labels: ["Sync to External MIDI Clock", "Send MIDI Clock", "None"])
        
        //add these to the array for later ref
        dataObjs = [bgPhoto, infoDisplay, midiSend, midiReceive, midiSync]
        
        //... then execute loops to create the 16 MIDI channel options for each of the 7 instruments
        
        //loop through and populate MIDI channels and labels
        var midiOutChannels:[Int] = [];
        var midiOutLabels:[String] = [];
        
        for i in 0...15 {
            midiOutChannels.append(i);
            midiOutLabels.append("MIDI Channel " + String(i + 1));
        }
        
        //loop through and create 7 midi outs, one for each instrument
        for i in 0..<KEY_INSTR_OUTS.count {
            let midiOut:SetDisclosureCellDataObj = SetDisclosureCellDataObj(
                
                key: KEY_INSTR_OUTS[i],
                label: "Instrument " + String(i + 1),
                type: types.TYPE_INTEGER);
            
            midiOut.initSubArrays(values: midiOutChannels, labels: midiOutLabels)
            
            //add to data objs array
            dataObjs.append(midiOut);
        }
        
    }
    
    //MARK:-
    //MARK:ACCESSORS
    
    internal func getDataObjForKey(_ key:String) -> SetCellDataObj? {
        
        for dataObj in dataObjs {
            if (dataObj.key == key){
                return dataObj;
            }
        }
        
        return nil;
    }
    
    

    
}
