//
//  ConfirmInterfaceController.swift
//  AnimationSample
//
//  Created by Sowaka on 2015/07/28.
//  Copyright © 2015年 com.myCompany. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmInterfaceController: WKInterfaceController {
    @IBOutlet var textContainer: WKInterfaceGroup!
    @IBOutlet var textBubble: WKInterfaceGroup!
    @IBOutlet var confirmationButton: WKInterfaceButton!
    @IBOutlet var bubbleLabel: WKInterfaceLabel!
    @IBOutlet var confirmationContainer: WKInterfaceGroup!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        super.willActivate()
        
        let suggestions = ["This is tasty.", "Watch out! This is spicy.", "I need to make this again."]
        
        presentTextInputControllerWithSuggestions(suggestions, allowedInputMode: .Plain) { (results) -> Void in
            if let res = results as? [String] where res.count > 0 {
                self.bubbleLabel.setText(res.first)
                
                self.animateWithDuration(0.5, animations: { () -> Void in
                    self.textBubble.setRelativeWidth(1.0, withAdjustment: 0.0)
                    self.textBubble.sizeToFitHeight()
                    self.textBubble.setAlpha(1.0)
                    
                    self.confirmationButton.setAlpha(1.0)
                    self.textContainer.sizeToFitHeight()
                })
            } else {
                self.dismissController()
            }
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func tapConfirm() {
        animateWithDuration(0.5) { () -> Void in
            self.textContainer.setAlpha(0.0)
            self.textContainer.setHeight(0.0)
            
            self.confirmationContainer.setRelativeHeight(1.0, withAdjustment: 0.0)
            self.confirmationContainer.setAlpha(1.0)
        }
    }
}
