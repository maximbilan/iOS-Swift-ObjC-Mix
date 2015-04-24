//
//  SwiftController.swift
//  ios_objc_mix
//
//  Created by Maxim Bilan on 1/17/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

import UIKit

extension NSObject {
	class func swiftClassFromString(className: String) -> AnyClass! {
		if  var appName: String? = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleName") as! String? {
			let fAppName = appName!.stringByReplacingOccurrencesOfString(" ", withString: "_", options: NSStringCompareOptions.LiteralSearch, range: nil)
			return NSClassFromString("\(fAppName).\(className)")
		}
		return nil;
	}
}

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
