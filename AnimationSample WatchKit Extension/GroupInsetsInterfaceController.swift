//
//  GroupInsetsInterfaceController.swift
//  AnimationSample
//
//  Created by Sowaka on 2015/07/25.
//  Copyright © 2015年 com.yourCompany. All rights reserved.
//

import WatchKit
import Foundation


class GroupInsetsInterfaceController: WKInterfaceController {
    @IBOutlet var group1: WKInterfaceGroup!
    @IBOutlet var group2: WKInterfaceGroup!
    @IBOutlet var group3: WKInterfaceGroup!
    @IBOutlet var group4: WKInterfaceGroup!
    @IBOutlet var group5: WKInterfaceGroup!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func didAppear() {
        super.didAppear()
        
        delay(1.0) { () -> () in
            self.animateWithDuration(1.0) { () -> Void in
                self.group1.setContentInset(UIEdgeInsets(top: 0.0, left: 10.0, bottom: 0.0, right: 0.0))
                self.group2.setContentInset(UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 10.0))
                self.group3.setContentInset(UIEdgeInsets(top: 10.0, left: 0.0, bottom: 0.0, right: 0.0))
                self.group4.setContentInset(UIEdgeInsets(top: 0.0, left: 0.0, bottom: 10.0, right: 0.0))
                self.group5.setContentInset(UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0))
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
