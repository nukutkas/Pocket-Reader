//
//  DescriptionInterfaceController.swift
//  Pocket Reader WatchKit Extension
//
//  Created by Татьяна Кочетова on 04.07.2021.
//

import WatchKit
import Foundation


class DescriptionInterfaceController: WKInterfaceController {
    
    @IBOutlet var descriptionLabel: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let description = context as? String {
            descriptionLabel.setText(description)
        }
    }
}
