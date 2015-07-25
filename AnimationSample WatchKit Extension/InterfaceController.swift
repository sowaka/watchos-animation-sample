//
//  InterfaceController.swift
//  AnimationSample WatchKit Extension
//
//  Created by Sowaka on 2015/07/25.
//  Copyright © 2015年 com.myCompany. All rights reserved.
//

import WatchKit
import Foundation


func delay(seconds: Double, completion:()->()) {
    let time = dispatch_time(DISPATCH_TIME_NOW, Int64( Double(NSEC_PER_SEC) * seconds ))
    
    dispatch_after(time, dispatch_get_main_queue()) {
        completion()
    }
}

class InterfaceController: WKInterfaceController {
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
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
