//
//  VWViewController.h
//  Man's Best Friend
//
//  Created by Valerino on 3/20/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VWDog.h"
#import "VWPuppy.h"

@interface VWViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
