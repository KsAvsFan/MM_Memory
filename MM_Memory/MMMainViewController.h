//
//  MMMainViewController.h
//  MM_Memory
//
//  Created by Jamie Thomason on 10/17/12.
//  Copyright (c) 2012 Jamie Thomason. All rights reserved.
//

#import "MMFlipsideViewController.h"

@class PictureView;

@interface MMMainViewController : UIViewController <MMFlipsideViewControllerDelegate>
{
    IBOutlet    PictureView*    oneOneCard;
    IBOutlet    PictureView*    oneTwoCard;
    IBOutlet    PictureView*    oneThreeCard;
    IBOutlet    PictureView*    twoOneCard;
    IBOutlet    PictureView*    twoTwoCard;
    IBOutlet    PictureView*    twoThreeCard;
    IBOutlet    PictureView*    threeOneCard;
    IBOutlet    PictureView*    threeTwoCard;
    IBOutlet    PictureView*    threeThreeCard;
    IBOutlet    PictureView*    fourOneCard;
    IBOutlet    PictureView*    fourTwoCard;
    IBOutlet    PictureView*    fourThreeCard;
    
    IBOutlet    UILabel*        stopWatchLabel;
    NSTimer                     *stopWatchTimer; // Store the timer that fires after a certain time
    NSDate                      *startDate; // Stores the date of the click on the start button
    


}

//@property (nonatomic, retain) IBOutlet UILabel *stopWatchLabel;
- (IBAction)onStartPressed:(id)sender;
- (IBAction)onStopPressed:(id)sender;

@end




