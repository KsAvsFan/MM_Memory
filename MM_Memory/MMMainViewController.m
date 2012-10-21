//
//  MMMainViewController.m
//  MM_Memory
//
//  Created by Jamie Thomason on 10/17/12.
//  Copyright (c) 2012 Jamie Thomason. All rights reserved.
//

#import "MMMainViewController.h"
#import "PictureView.h"

@interface MMMainViewController ()

@end


@implementation MMMainViewController

NSTimer *stopWatchTimer;
NSTimeInterval secondsAlreadyRun;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setCards];
	// Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) setCards
{
//    oneOneCard.imageName = @"panerai1_93_112.png";
//    oneTwoCard.imageName = @"panerai2_93_112.png";
//    oneThreeCard.imageName = @"panerai3_93_112.png";
//    twoOneCard.imageName = @"panerai4_93_112.png";
//    twoTwoCard.imageName = @"panerai5_93_112.png";
//    twoThreeCard.imageName = @"flavor-flav.png";
//    threeOneCard.imageName = @"flavor-flav.png";
//    threeTwoCard.imageName = @"panerai5_93_112.png";
//    threeThreeCard.imageName = @"panerai4_93_112.png";
//    fourOneCard.imageName = @"panerai3_93_112.png";
//    fourTwoCard.imageName = @"panerai2_93_112.png";
//    fourThreeCard.imageName = @"panerai1_93_112.png";
}


//-(IBAction)startClock:(UIButton*)myButton
//{
//    
//    startDate = [[NSDate date] retain];
//    myButton.enabled  = false;
//    secondTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/100.0 target:self selector:@selector(updateTimerSecond) userInfo:nil repeats:YES];
//}

- (IBAction)onStartPressed:(id)sender
{
    
    stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1/10
                                                      target:self
                                                    selector:@selector(updateTimerSecond:)
                                                    userInfo:nil
                                                     repeats:YES];
    startDate = [[NSDate alloc] init];
    // equivalent to [[NSDate date] retain];
    [stopWatchTimer fire];
}

- (IBAction)onStopPressed:(id)sender {
    // _Increment_ secondsAlreadyRun to allow for multiple pauses and restarts
    secondsAlreadyRun += [[NSDate date] timeIntervalSinceDate:startDate]; //need to setup secondsAlreadyRun
    [stopWatchTimer invalidate];
    stopWatchTimer = nil;
    [startDate release];
    [self updateTimerSecond];
}

-(void)updateTimerSecond:(NSTimer *)tim {
    NSDate *currentDate = [NSDate date];
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:startDate];
    timeInterval += secondsAlreadyRun; //need to setup secondsAlreadyRun as a NSDate?
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"mm:ss:SS"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    NSString *timeString = [dateFormatter stringFromDate:timerDate];
    secondLabel.text = timeString;
    [dateFormatter release];
    
}

- (IBAction)reset:(id)sender; {
    secondsAlreadyRun = 0;
    secondLabel.text = @"00:00.00";
}



#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(MMFlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
