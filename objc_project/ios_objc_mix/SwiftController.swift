//
//  SwiftController.swift
//  ios_objc_mix
//
//  Created by Maxim Bilan on 1/17/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

import UIKit

@objc class SwiftController: UIViewController {

    override func viewDidLoad() {
        print("Swift Controller")
		
		let mutableArray = ObjCObject.arrayOfObjects()
		let obj: AnyObject = mutableArray.objectAtIndex(0)
		let objcObj = obj as! ObjCObject
		
		println(obj)
		println("----")
		println(objcObj)
    }
    
}
