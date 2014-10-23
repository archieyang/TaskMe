//
//  DismissSegue.swift
//  TaskMe
//
//  Created by archie on 14/10/23.
//  Copyright (c) 2014年 archie. All rights reserved.
//

import UIKit

@objc(DismissSegue)
class DismissSegue: UIStoryboardSegue {
    
   override func perform() {
        if let controller = sourceViewController.presentingViewController? {
            
            controller.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
