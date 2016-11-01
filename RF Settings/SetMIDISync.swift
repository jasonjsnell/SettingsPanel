
import UIKit

class SetMIDISync: SetCheckmarkTable {
    
    override func viewDidLoad() {
        
        //set vars before calling super

        title = "MIDI Clock"
        parentCellKey = data.KEY_MIDI_SYNC;
        
        super.viewDidLoad()
        
    }
    
}

