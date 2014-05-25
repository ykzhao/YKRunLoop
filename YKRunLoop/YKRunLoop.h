//
//  YKRunLoop.h
//  YKRunLoop
//
//  Created by William Zhao on 5/25/14.
//  Copyright (c) 2014 Zhao YongKui. All rights reserved.
//

#import <Foundation/Foundation.h>

@class YKRunLoopSource;

@interface YKRunLoop : NSObject

+ (YKRunLoop *)currentRunLoop;
+ (YKRunLoop *)mainRunLoop NS_AVAILABLE(10_5, 2_0);

-(id)initWithRunLoop:(NSRunLoop*)runLoop;

-(void)addSource:(YKRunLoopSource*)source;

-(void)removeSource:(YKRunLoopSource*)source;

@end
