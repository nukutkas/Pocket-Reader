//
//  InterfaceController.swift
//  Pocket Reader WatchKit Extension
//
//  Created by Татьяна Кочетова on 25.06.2021.
//

import WatchKit
import Foundation


class BookDetailController: WKInterfaceController {
    
    @IBOutlet var descriptionLabel: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let book = context as? BookItem {
            descriptionLabel.setText(book.bookDescription)
        }
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }

}
