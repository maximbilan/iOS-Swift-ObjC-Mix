//
//  ObjCObject.h
//  ios_objc_mix
//
//  Created by Maxim Bilan on 1/27/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjCObject : NSObject

@property (nonatomic, readwrite) NSString *name;

+ (NSMutableArray *)arrayOfObjects;

@end