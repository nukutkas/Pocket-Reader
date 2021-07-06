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
    @IBOutlet var nameLabel: WKInterfaceLabel!
    @IBOutlet var authorLabel: WKInterfaceLabel!
    @IBOutlet var editionLabel: WKInterfaceLabel!
    @IBOutlet var pagesLabel: WKInterfaceLabel!
    @IBOutlet var selectButton: WKInterfaceButton!
    @IBOutlet var image: WKInterfaceImage!
    
    var book: BookItem!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let book = context as? BookItem {
            self.book = book
            
            nameLabel.setText(book.name)
            authorLabel.setText(book.author)
            editionLabel.setText(String(book.edition))
            pagesLabel.setText(String(book.pages))
            descriptionLabel.setText(book.bookDescription)
            image.setImageNamed(book.imageName)
        }
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        return book.bookDescription
    }
}
