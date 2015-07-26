//
//  SequentialInterfaceController.swift
//  AnimationSample
//
//  Created by Sowaka on 2015/07/26.
//  Copyright © 2015年 com.myCompany. All rights reserved.
//

import WatchKit
import Foundation


class SequentialInterfaceController: WKInterfaceController {
    
    @IBOutlet var group: WKInterfaceGroup!
    @IBOutlet var group0: WKInterfaceGroup!
    @IBOutlet var group1: WKInterfaceGroup!
    @IBOutlet var group2: WKInterfaceGroup!
    @IBOutlet var group3: WKInterfaceGroup!
    @IBOutlet var group4: WKInterfaceGroup!
    var groups:[WKInterfaceGroup]!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        groups = [group0, group1, group2, group3, group4]
    }
    
    override func didAppear() {
        super.didAppear()
        
        var seconds = 0.0
        for i in 0..<groups.count {
            let group = groups[i]
            
            seconds = Double(i) * 0.5
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64( Double(NSEC_PER_SEC) * seconds ))
            dispatch_after(time, dispatch_get_main_queue()) {
                self.animateWithDuration(0.5, animations: { () -> Void in
                    group.setAlpha(1.0)
                })
            }
        }
        
        animateWithDuration(1.25) { () -> Void in
            self.group.setVerticalAlignment(WKInterfaceObjectVerticalAlignment.Top)
            delay(1.25, completion: { () -> () in
                self.animateWithDuration(1.25, animations: { () -> Void in
                    self.group.setVerticalAlignment(WKInterfaceObjectVerticalAlignment.Center)
                })
            })
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
