#import <Foundation/Foundation.h>

#import "TSRetainTracker.h"

@interface TSClass : NSObject
{
    int m_a;
    int m_b;
}

-(int) GetA;
-(int) GetB;
-(void) SetA: (int) a;
-(void) SetB: (int) b;
-(void) SetA: (int) a
        andB: (int) b;
@end

@implementation TSClass

-(int) GetA
{
    return m_a;
}

-(int) GetB
{
    return m_b;
}

-(void) SetA:(int)a
{
    m_a = a;
}

-(void) SetB:(int)b
{
    m_b = b;
}

-(void) SetA:(int)a andB:(int)b
{
    m_a = a;
    m_b = b;
}

@end


@interface TSSubClass : TSClass

@end

@implementation TSSubClass

@end


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
    
    
    
    
    
    NSLog(@"HelloWorld!");
    
    TSClass *myTSClass = [TSClass new];
    
    [myTSClass SetA:50 andB:60];
    
    NSLog(@"%d %d", [myTSClass GetA], [myTSClass GetB]);
    
    TSSubClass *myPa = [TSSubClass new];
    
    [myPa SetA:70 andB:80];
    
    NSLog(@"%d %d", [myPa GetA], [myPa GetB]);
    
    return 0;
}