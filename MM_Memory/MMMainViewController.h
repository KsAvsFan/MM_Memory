//
//  MMMainViewController.h
//  MM_Memory
//
//  Created by Jamie Thomason on 10/17/12.
//  Copyright (c) 2012 Jamie Thomason. All rights reserved.
//

#import "MMFlipsideViewController.h"
#import "MMDelegateFile.h"

@class PictureView;

@interface MMMainViewController : UIViewController <MMFlipsideViewControllerDelegate, MMDelegateFile>
{
    IBOutlet    UILabel*        secondLabel;
    IBOutlet    UILabel*        missesLabel;
    IBOutlet    UILabel*        matchesLabel;
    
    NSTimer                     *secondTimer;
    
    NSDate                      *startDateMain;
    NSDate                      *startDate;
    NSDate                      *pausedDate;
    
    Boolean                     isCounting;
    
    int                         winningScore;

}


//-(IBAction)startClock:(UIButton*)myButton;
//-(IBAction)stopClock:(UIButton*)stopButton;



-(void)startGame;


@end




