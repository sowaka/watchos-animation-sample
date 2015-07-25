//
//  AlphaInterfaceController.swift
//  AnimationSample
//
//  Created by Sowaka on 2015/07/25.
//  Copyright © 2015年 com.yourCompany. All rights reserved.
//

import WatchKit
import Foundation


class AlphaInterfaceController: WKInterfaceController {
    @IBOutlet var group1: WKInterfaceGroup!
    @IBOutlet var group2: WKInterfaceGroup!
    @IBOutlet var group3: WKInterfaceGroup!
    @IBOutlet var group4: WKInterfaceGroup!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func didAppear() {
        super.didAppear()
        
        delay(1.0) { () -> () in
            self.animateWithDuration(1.0) { () -> Void in
                self.group1.setAlpha(0.0)
                self.group2.setAlpha(0.25)
                self.group3.setAlpha(0.5)
                self.group4.setAlpha(0.75)
            }
        }
        
        let duration = 1.0 // アニメーションの時間
        animateWithDuration(duration) { () -> Void in
            // ここにアニメーション後の状態を記述する
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
