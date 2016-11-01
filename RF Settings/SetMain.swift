
import UIKit

class SetMain: SetMultiTable {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    
        //MARK: TITLES
        
        title = "Settings";
        
        sectionTitles = [
            "Visuals",
            "MIDI",
            "MIDI Sync",
            "MIDI Outs"
        ]
        
        //MARK: KEYS
        
        cellKeys = [
            
            [
                data.KEY_BG_PHOTO,
                data.KEY_INFO_DISPLAY
            ],
            [
                data.KEY_MIDI_SEND_ENABLED,
                data.KEY_MIDI_RECEIVE_ENABLED
            ],
            [
                data.KEY_MIDI_SYNC
            ],
            
            data.KEY_INSTR_OUTS
        ]
        
        //MARK: DISPLAY TYPES
        
        cellDisplayTypes = [
            
            [
                DISPLAY_TYPE_SWITCH,
                DISPLAY_TYPE_SWITCH
            ],
            [
                DISPLAY_TYPE_SWITCH,
                DISPLAY_TYPE_SWITCH
            ],
            [
                DISPLAY_TYPE_DISCLOSURE
            ],
            [
                DISPLAY_TYPE_DISCLOSURE,
                DISPLAY_TYPE_DISCLOSURE,
                DISPLAY_TYPE_DISCLOSURE,
                DISPLAY_TYPE_DISCLOSURE,
                DISPLAY_TYPE_DISCLOSURE,
                DISPLAY_TYPE_DISCLOSURE,
                DISPLAY_TYPE_DISCLOSURE
            ]
            
        ]
        
    }
    
    //MARK:USER INPUT
    
    //user taps disclosure row
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //instance specific code
        
        let displayType:String = cellDisplayTypes[indexPath.section][indexPath.row]
        
        if (displayType == DISPLAY_TYPE_DISCLOSURE){
            
            
            if let cell:SetDisclosureCell = tableView.cellForRow(at: indexPath) as? SetDisclosureCell {
                
                if let cellData:SetCellDataObj = cell.data {
                    
                    let cellDataKey:String = cellData.key
                        
                    //MARK: PUSH NEW VIEW CONTROLLER
                    //launch specific view controllers based on the key
                    
                    if (cellDataKey == data.KEY_MIDI_SYNC){
                        
                        let vc:SetMIDISync = SetMIDISync()
                        vc.parentCell = cell;
                        self.nav.pushViewController(vc, animated: true)
                        
                    } else if (
                        
                        cellDataKey == data.KEY_INSTR_OUTS[0] ||
                            cellDataKey == data.KEY_INSTR_OUTS[1] ||
                            cellDataKey == data.KEY_INSTR_OUTS[2] ||
                            cellDataKey == data.KEY_INSTR_OUTS[3] ||
                            cellDataKey == data.KEY_INSTR_OUTS[4] ||
                            cellDataKey == data.KEY_INSTR_OUTS[5] ||
                            cellDataKey == data.KEY_INSTR_OUTS[6]
                        
                        ){
                        let vc:SetMIDIOut = SetMIDIOut()
                        vc.parentCell = cell;
                        vc.setChannel(indexPath.row)
                        self.nav.pushViewController(vc, animated: true)
                    }

                    
                    
                } else {
                    if (debug){
                        print("SETTINGS: Error accessing cell data")
                    }
                }
                
            } else {
                if (debug){
                    print("SETTINGS: Error accessing cell")
                }
            }
            
        }
        
        //no actions on toggles since that is handled inside of the togglecell class
            
    }

    
}

