//
//  ObjCObject.m
//  ios_objc_mix
//
//  Created by Maxim Bilan on 1/27/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

#import "ObjCObject.h"

@implementation ObjCObject

+ (NSMutableArray *)arrayOfObjects
{
	NSMutableArray *arr = [NSMutableArray array];
	ObjCObject *obj1 = [[ObjCObject alloc] init];
	obj1.name = @"First";
	ObjCObject *obj2 = [[ObjCObject alloc] init];
	obj2.name = @"Second";
	ObjCObject *obj3 = [[ObjCObject alloc] init];
	obj3.name = @"Third";
	[arr addObject:obj1];
	[arr addObject:obj2];
	[arr addObject:obj3];
	return arr;
}

@end