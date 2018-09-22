An example of the mixing Swift and Obj C code in the same project
============

Yes, there is opportunity to combine this languages in the same project. It’s great. Apple provides a tutorial how to do this magic. You can found <a href="https://developer.apple.com/library/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html">here</a>. But in spite of it I would like to share my experience on real examples, because it’s not so simple as it says.

## Swift code in Obj C project

Let’s start from <i>Obj C</i> project, and will try to add swift code to this project.

Create the <i>Obj C</i> project.

And create new <i>Swift</i> class. For example, <i>UIViewController</i>:<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/1.png)
<br>
<br>
After that, you will see the following popup message:
<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/2.png)
<br>
<br>
Please, choose <i>‘Yes’</i>.

Now, you have <i>ios_objc_mix-Bridging-Header.h</i> file. In this header you can import source files for your <i>Swift</i> class.

After that, you can do the next steps.<br>
<br>
1. Implement you <i>Swift</i> class with <i>@objc</i> attribute:<br>
<pre>
//
//  SwiftController.swift
//  ios_objc_mix
//
//  Created by Maxim Bilan on 1/17/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

import UIKit

@objc class SwiftController: UIViewController {
    
}
</pre>
<br>
2. <i>Defines module</i> set to <i>‘YES’</i>:<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/4.png)<br><br>
3. <i>Embedded Content Contains Swift</i> set to <i>‘YES’</i>:<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/5.png)<br><br>
4. After that you should found the <i>Product Module Name</i> in your target settings:<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/6.png)<br><br>
5. And please include a header for <i>Swift</i> compatibility for example to a pch file.<br>

<pre>
#import “Product Module Name-Swift.h”
</pre>

<pre>
//
//  ios_objc_mix-PrefixHeader.pch
//  ios_objc_mix
//
//  Created by Maxim Bilan on 1/17/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

#ifdef __OBJC__
    #import &#60;UIKit/UIKit.h&#62;
    #import &#60;Foundation/Foundation.h&#62;
#endif

#import "ios_objc_mix-Swift.h"

</pre>
<br>
And now you can use <i>Swift</i> code☺

Please, see the example on <a href="https://github.com/maximbilan/ios_swift_objc_mix">github</a>.<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/8.png)<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/9.png)<br><br>
<b>Note:</b> ios_objc_mix-Swift.h file you can’t find in your project browser ☹ Xcode automatically generates this header. Magic!

<b>Note:</b> if you have a lot of targets in your project. It really is a pain. You should import magic Product-module-name-Swift.h headers for each target.

<b>Note:</b> if you use <i>Swift</i> classes in the <i>Interface Builder</i>, you should set up the module.<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/10.png)<br><br>
## Obj C code in Swift project

It’s a similar process. And simpler.

Add <i>Obj C</i> file to project.<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/11.png)<br>
And also please choose <i>‘YES’</i>:<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/12.png)<br>
Include our <i>Obj C</i> View Controller to bridging header:<br>
<pre>
//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

#import "ObjCViewController.h"

</pre>
And that’s all.

You also you can find example on <a href="https://github.com/maximbilan/ios_swift_objc_mix"> github</a>.<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/14.png)<br>
![alt tag](https://raw.github.com/maximbilan/ios_swift_objc_mix/master/img/15.png)<br><br>
Hopefully this will save time for someone. Don’t forget star the github repository ☺
