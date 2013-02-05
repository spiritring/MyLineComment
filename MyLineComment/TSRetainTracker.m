//
//  TSRetainTracker.m
//  MyLineComment
//
//  Created by TSEnel on 13-2-5.
//  Copyright (c) 2013年 TSEnel. All rights reserved.
//

#import "TSRetainTracker.h"

@implementation TSRetainTracker
- (id) init
{
    if (self = [super init]) {
        NSLog(@"init: Retain count of %ld.",[self retainCount]);
    }
    
    return self;
}

- (void) dealloc
{
    NSLog(@"dealloc called. Bye Bye.");
    [super dealloc];
}

@end
