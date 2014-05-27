//
//  VWViewController.m
//  Man's Best Friend
//
//  Created by Valerino on 3/20/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import "VWViewController.h"

@interface VWViewController ()

@end

@implementation VWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    VWDog *myDog = [[VWDog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 2;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    //NSLog(@"My dog is named %@ and it's age is %i and the breed is %@", myDog.name, myDog.age, myDog.breed);
    
    //myDog = nil;
    
    //NSLog(@"My dog is named %@ and it's age is %i and the breed is %@", myDog.name, myDog.age, myDog.breed);
    
    //[myDog bark];
    
    //[myDog barkFewTimes:7];
    
    //NSLog(@"First Challenge Method:");
    //[myDog printIntDescending:3];
    
    //NSLog(@"Second Challenge Method:");
    //[myDog printIntDescending:6 low:2];
    
    //int factorialInput = 5;
    //NSLog(@"Third Challenge Method:");
    //NSLog(@"The result of %i! is %i", factorialInput, [myDog factorial:factorialInput]);
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    VWDog *dog2 = [[VWDog alloc] init];
    dog2.name = @"Wishbone";
    dog2.breed = @"Jack Russell Terrier";
    dog2.image = [UIImage imageNamed:@"JRT.jpg"];
    
    VWDog *dog3 = [[VWDog alloc] init];
    dog3.name = @"Angel";
    dog3.breed = @"Italian Greyhound";
    dog3.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    VWDog *dog4 = [[VWDog alloc] init];
    dog4.name = @"Lassie";
    dog4.breed = @"Border Collie";
    dog4.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:dog2];
    [self.myDogs addObject:dog3];
    [self.myDogs addObject:dog4];

    VWPuppy *littlePuppy = [[VWPuppy alloc] init];
    [littlePuppy givePuppyEyes];
    littlePuppy.name = @"Bo O";
    littlePuppy.breed = @"Portuguese Water Dog";
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    [self.myDogs addObject:littlePuppy];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int numOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numOfDogs;
    
    if (randomIndex == self.currentIndex) {
        if(randomIndex == 0) {
            randomIndex++;
        } else {
            randomIndex--;
        }
    }
    NSLog(@"Random: %i Current: %i", randomIndex, self.currentIndex);
    self.currentIndex = randomIndex;
    VWDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        self.myImageView.image = randomDog.image;
                        self.breedLabel.text = randomDog.breed;
                        self.nameLabel.text = randomDog.name;
                    }
                    completion:^(BOOL finished) {
                        
                    }];
    
    sender.title = @"And Another";
}
@end
