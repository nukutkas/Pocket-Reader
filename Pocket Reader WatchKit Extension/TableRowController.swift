//
//  TableRowController.swift
//  Pocket Reader WatchKit Extension
//
//  Created by Татьяна Кочетова on 04.07.2021.
//

import WatchKit

class TableRowController: NSObject {
    
    var book: BookItem! {
        didSet {
            nameLabel.setText(book.name)
            authorLabel.setText(book.author)
        }
    }
    
    @IBOutlet var nameLabel: WKInterfaceLabel!
    @IBOutlet var authorLabel: WKInterfaceLabel!
 
}
