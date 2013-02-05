#import <Foundation/Foundation.h>
#import "TSRetainTracker.h"

int main()
{
    TSRetainTracker* tracker = [TSRetainTracker new];
    
    [tracker retain];
    NSLog(@"%ld", [tracker retainCount]);
    
    [tracker retain];
    NSLog(@"%ld", [tracker retainCount]);
    
    [tracker retain];
    NSLog(@"%ld", [tracker retainCount]);
    
    [tracker retain];
    NSLog(@"%ld", [tracker retainCount]);
    
    [tracker release];
    NSLog(@"%ld", [tracker retainCount]);
    
    [tracker release];
    NSLog(@"%ld", [tracker retainCount]);
    
    [tracker release];
    NSLog(@"%ld", [tracker retainCount]);
    
    [tracker release];
    NSLog(@"%ld", [tracker retainCount]);
    
    [tracker release];
    NSLog(@"%ld", [tracker retainCount]);
    
    
    return 0;
}