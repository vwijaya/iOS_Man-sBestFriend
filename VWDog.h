//
//  VWDog.h
//  Man's Best Friend
//
//  Created by Valerino on 3/20/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VWDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *name;

-(void)bark;
-(void)barkFewTimes:(int)numberOfTimes;

-(void)printIntDescending:(int)startingNumber;
-(void)printIntDescending:(int)topNumber low:(int)bottomNumber;
-(int)factorial:(int)topNumber;

@end
