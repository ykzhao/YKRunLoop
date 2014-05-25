//
//  YKRunLoop.m
//  YKRunLoop
//
//  Created by William Zhao on 5/25/14.
//  Copyright (c) 2014 Zhao YongKui. All rights reserved.
//

#import "YKRunLoop.h"

@interface YKRunLoop()

@end

@implementation YKRunLoop {
    NSRunLoop* _runLoop;
}

+ (YKRunLoop *)currentRunLoop {
    return [[[YKRunLoop alloc] initWithRunLoop:[NSRunLoop currentRunLoop]] autorelease];
}

+ (YKRunLoop *)mainRunLoop NS_AVAILABLE(10_5, 2_0) {
    return [[[YKRunLoop alloc] initWithRunLoop:[NSRunLoop mainRunLoop]] autorelease];
}

-(id)initWithRunLoop:(NSRunLoop*)runLoop {
    self = [super init];
    if(self){
        _runLoop = [runLoop retain];
    }
    return self;
}

-(void)dealloc {
    [_runLoop release];
    [super dealloc];
}

-(void)addSource:(YKRunLoopSource*)source {
    
}

-(void)removeSource:(YKRunLoopSource*)source {
    
}

@end
