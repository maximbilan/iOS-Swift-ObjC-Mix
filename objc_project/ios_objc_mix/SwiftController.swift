//
//  SwiftController.swift
//  ios_objc_mix
//
//  Created by Maxim Bilan on 1/17/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

import UIKit

extension NSObject {
	// create a static method to get a swift class for a string name
	class func swiftClassFromString(className: String) -> AnyClass! {
		// get the project name
		if  var appName: String? = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleName") as! String? {
			// generate the full name of your class (take a look into your "YourProject-swift.h" file)
			//let classStringName = "_TtC\(appName!.utf16count)\(appName)\(countElements(className))\(className)"
			// return the class!
			return NSClassFromString("ios_objc_mix.SwiftController")
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
