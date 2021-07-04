//
//  BooksInterfaceController.swift
//  Pocket Reader WatchKit Extension
//
//  Created by Татьяна Кочетова on 04.07.2021.
//

import WatchKit
import Foundation


class BooksInterfaceController: WKInterfaceController {
    
    @IBOutlet var table: WKInterfaceTable!
    
    var map = [GenreType: [BookItem]]()

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        for book in BookItem.getBooks() {
            var arr = map[book.genre] ?? [BookItem]()
            arr.append(book)
            map[book.genre] = arr
        }
         
        map.forEach { (value) in
            print(value.value)
        }
    }
 
}
