//
//  MyBookRowController.swift
//  Pocket Reader WatchKit Extension
//
//  Created by Татьяна Кочетова on 25.06.2021.
//

import WatchKit

class MyBookRowController: NSObject {
    
    var book: BookItem! {
        didSet {
            nameLabel.setText(book.name)
        }
    }
    
    @IBOutlet weak var nameLabel: WKInterfaceLabel!
}
