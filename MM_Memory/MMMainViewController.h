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
//    IBOutlet    PictureView*    oneOneCard;
//    IBOutlet    PictureView*    oneTwoCard;
//    IBOutlet    PictureView*    oneThreeCard;
//    IBOutlet    PictureView*    twoOneCard;
//    IBOutlet    PictureView*    twoTwoCard;
//    IBOutlet    PictureView*    twoThreeCard;
//    IBOutlet    PictureView*    threeOneCard;
//    IBOutlet    PictureView*    threeTwoCard;
//    IBOutlet    PictureView*    threeThreeCard;
//    IBOutlet    PictureView*    fourOneCard;
//    IBOutlet    PictureView*    fourTwoCard;
//    IBOutlet    PictureView*    fourThreeCard;

    IBOutlet    UILabel*        secondLabel;
    IBOutlet    UILabel*        missesLabel;
    IBOutlet    UILabel*        matchesLabel;
    
    NSTimer *secondTimer;
    
    NSDate *startDateMain;
    NSDate *startDate;
    NSDate *pausedDate;
    
    Boolean     isCounting;

}


-(IBAction)startClock:(UIButton*)myButton;
-(IBAction)stopClock:(UIButton*)stopButton;



@end




