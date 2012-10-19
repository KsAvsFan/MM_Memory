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
    IBOutlet    UIButton*    oneOneCard;
    IBOutlet    UIButton*    oneTwoCard;
    IBOutlet    UIButton*    oneThreeCard;
    IBOutlet    UIButton*    twoOneCard;
    IBOutlet    UIButton*    twoTwoCard;
    IBOutlet    UIButton*    twoThreeCard;
    IBOutlet    UIButton*    threeOneCard;
    IBOutlet    UIButton*    threeTwoCard;
    IBOutlet    UIButton*    threeThreeCard;
    IBOutlet    UIButton*    FourOneCard;
    IBOutlet    UIButton*    FourTwoCard;
    IBOutlet    UIButton*    FourThreeCard;
    IBOutlet    PictureView* testPicture;
}


-(IBAction)changeMe:(UIButton*)button;

@property (nonatomic, retain) NSString *picOneOneCard;
@property (nonatomic, retain) NSString *picOneTwoCard;
@property (nonatomic, retain) NSString *picOneThreeCard;
@property (nonatomic, retain) NSString *picTwoOneCard;
@property (nonatomic, retain) NSString *picTwoTwoCard;
@property (nonatomic, retain) NSString *picTwoThreeCard;
@property (nonatomic, retain) NSString *picThreeOneCard;
@property (nonatomic, retain) NSString *picThreeTwoCard;
@property (nonatomic, retain) NSString *picThreeThreeCard;
@property (nonatomic, retain) NSString *picFourOneCard;
@property (nonatomic, retain) NSString *picFourTwoCard;
@property (nonatomic, retain) NSString *picFourThreeCard;


@end
