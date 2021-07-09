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
    
    var book: BookItem!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let book = context as? BookItem {
            self.book = book
            setTitle(book.name)
            confirmationLabel.setText("Вы уверены, что хотите выбрать эту книгу?")
        }
    }
    
    @IBAction func bookSelected() {
        UserSettings.userBooks.append(book)
        popToRootController()
    }
    
    @IBAction func cancelSelection() {
        pop()
    }
}
