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

int winningScore = 6;

- (void)viewDidLoad
{

    [super viewDidLoad];
    [self startGame];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)startGame
{
    // load cards if necessary
    [self onStartPressed];
    if (!winningScore)
    {
        //do stuff
    }
}

- (void)onStartPressed
{
    stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1/10
                                                      target:self
                                                    selector:@selector(updateTimerSecond:)
                                                    userInfo:nil
                                                     repeats:YES];
    startDate = [[NSDate alloc] init];
    [stopWatchTimer fire];
}

- (void)onStopPressed {
    secondsAlreadyRun += [[NSDate date] timeIntervalSinceDate:startDate]; //need to setup secondsAlreadyRun
    [stopWatchTimer invalidate];
    stopWatchTimer = nil;
    [startDate release];
    [self updateTimerSecond:nil];
}

-(void)updateTimerSecond:(NSTimer*)timer {
    NSDate *currentDate = [NSDate date];
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:startDate];
    timeInterval += secondsAlreadyRun; //need to setup secondsAlreadyRun as a NSDate?
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"mm:ss"];
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
    NSLog(@"Coming out of flipside back to main side");
    [self onStartPressed];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [self onStopPressed];
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
