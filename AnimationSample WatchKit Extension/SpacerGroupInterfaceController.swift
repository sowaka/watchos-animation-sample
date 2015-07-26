//
//  SpacerGroupInterfaceController.swift
//  AnimationSample
//
//  Created by Sowaka on 2015/07/26.
//  Copyright © 2015年 com.myCompany. All rights reserved.
//

import WatchKit
import Foundation


class SpacerGroupInterfaceController: WKInterfaceController {
    @IBOutlet var table: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let items = ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"]
        table.setNumberOfRows(items.count, withRowType: "SpacerRow")
        for i in 0..<items.count {
            let row = table.rowControllerAtIndex(i) as! SpacerRow
            row.numberLabel.setText(String(i))
            row.itemLabel.setText(items[i])
        }
    }
    
    override func didAppear() {
        super.didAppear()
        
        animateWithDuration(0.5) {
            for i in 0..<self.table.numberOfRows {
                let row = self.table.rowControllerAtIndex(i) as! SpacerRow
                row.numberGroup.setAlpha(1.0)
                row.itemLabel.setAlpha(1.0)
                row.spacerGroup.setWidth(0.0)
            }
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
