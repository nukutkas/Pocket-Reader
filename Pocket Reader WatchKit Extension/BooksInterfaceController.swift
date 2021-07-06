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
        
        for (genre, books) in map {
            addSection(genre: genre, books: books)
        }
    }
    
    func addSection(genre: GenreType, books: [BookItem]) {
        let rows = table.numberOfRows
        table.insertRows(at: NSIndexSet(index: rows) as IndexSet, withRowType: "headerRow")
        
        let itemRows = NSIndexSet(indexesIn: NSRange(location: rows + 1, length: books.count))
        table.insertRows(at: itemRows as IndexSet, withRowType: "bookRow")
        
        for row in rows..<table.numberOfRows {
            let controller = table.rowController(at: row)
            
            if let controller = controller as? HeaderRowController {
                controller.image.setImageNamed(genre.rawValue.lowercased())
                controller.sectionLabel.setText(genre.descriptionForWatch())
            } else if let controller = controller as? TableRowController {
                let book = books[row - rows - 1]
                controller.book = book
            }
        }
    }
}
