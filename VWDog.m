//
//  VWDog.m
//  Man's Best Friend
//
//  Created by Valerino on 3/20/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import "VWDog.h"

@implementation VWDog

-(void)bark
{
    NSLog(@"Woof Woof!");
}

-(void)barkFewTimes:(int)numberOfTimes
{
    for(int i=0; i<numberOfTimes; i++) {
        //NSLog(@"Woof Woof!");
        [self bark];
    }
}

-(void)printIntDescending:(int)startingNumber
{
    for(int i=startingNumber; i>0; i--) {
        NSLog(@"%i", i);
    }
}

-(void)printIntDescending:(int)topNumber low:(int)bottomNumber
{
    for(int i=topNumber; i>=bottomNumber; i--) {
        NSLog(@"%i", i);
    }
}

-(int)factorial:(int)topNumber
{
    int result = topNumber;
    
    for(int i = topNumber; i > 1; i--) {
        result = result * (i - 1);
        //NSLog(@"Debug: %i", result);
    }
    
    return result;
    
}

@end
