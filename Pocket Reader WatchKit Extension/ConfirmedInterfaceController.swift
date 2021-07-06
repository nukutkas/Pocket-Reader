//
//  ConfirmedInterfaceController.swift
//  Pocket Reader WatchKit Extension
//
//  Created by Татьяна Кочетова on 06.07.2021.
//

import WatchKit
import Foundation


class ConfirmedInterfaceController: WKInterfaceController {
    
    @IBOutlet var confirmationLabel: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    @IBAction func bookSelected() {
        
    }
    
    @IBAction func cancelSelection() {
        
    }
    
}
