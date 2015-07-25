//
//  GroupBackgroundColorInterfaceController.swift
//  AnimationSample
//
//  Created by Sowaka on 2015/07/25.
//  Copyright © 2015年 com.yourCompany. All rights reserved.
//

import WatchKit
import Foundation


class GroupBackgroundColorInterfaceController: WKInterfaceController {
    @IBOutlet var group1: WKInterfaceGroup!
    @IBOutlet var group2: WKInterfaceGroup!
    @IBOutlet var group3: WKInterfaceGroup!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func didAppear() {
        super.didAppear()
        
        delay(1.0) { () -> () in
            self.animateWithDuration(1.0) { () -> Void in
                self.group1.setBackgroundColor(UIColor.redColor())
                self.group2.setBackgroundColor(UIColor.yellowColor())
                self.group3.setBackgroundColor(UIColor.greenColor())
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
