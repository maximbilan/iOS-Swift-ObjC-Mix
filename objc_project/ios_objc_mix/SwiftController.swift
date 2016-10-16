//
//  SwiftController.swift
//  ios_objc_mix
//
//  Created by Maxim Bilan on 1/17/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

import UIKit

extension NSObject {
	
	class func swiftClassFromString(_ className: String) -> AnyClass! {
		if  let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String {
			let fAppName = appName.replacingOccurrences(of: " ", with: "_", options: NSString.CompareOptions.literal, range: nil)
			return NSClassFromString("\(fAppName).\(className)")
		}
		return nil;
	}
	
}

@objc class SwiftController: UIViewController {

    override func viewDidLoad() {
        print("Swift Controller", terminator: "")
		
		let mutableArray = ObjCObject.arrayOfObjects()
		let obj: AnyObject = mutableArray!.object(at: 0) as AnyObject
		let objcObj = obj as! ObjCObject
		
		print(obj)
		print("----")
		print(objcObj)
    }
    
}
