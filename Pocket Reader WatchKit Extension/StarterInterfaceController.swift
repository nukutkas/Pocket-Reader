//
//  StarterInterfaceController.swift
//  Pocket Reader WatchKit Extension
//
//  Created by Татьяна Кочетова on 25.06.2021.
//

import WatchKit
import Foundation


class StarterInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var table: WKInterfaceTable!
    let array = ["first1", "first2", "first3", "first4"]

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        setupTable()
    }
    
    func setupTable() {
        table.setNumberOfRows(array.count, withRowType: "myBookRow")
        
        
        for (index, item) in array.enumerated() {
            if let rowController = table.rowController(at: index) as? MyBookRowController {
                rowController.nameLabel.setText(item)
            }
        }
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
