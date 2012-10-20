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
    oneOneCard.imageName = @"panerai1_93_112.png";
    oneTwoCard.imageName = @"panerai2_93_112.png";
    oneThreeCard.imageName = @"panerai3_93_112.png";
    twoOneCard.imageName = @"panerai4_93_112.png";
    twoTwoCard.imageName = @"panerai5_93_112.png";
    twoThreeCard.imageName = @"flavor-flav.png";
    threeOneCard.imageName = @"flavor-flav.png";
    threeTwoCard.imageName = @"panerai5_93_112.png";
    threeThreeCard.imageName = @"panerai4_93_112.png";
    fourOneCard.imageName = @"panerai3_93_112.png";
    fourTwoCard.imageName = @"panerai2_93_112.png";
    fourThreeCard.imageName = @"panerai1_93_112.png";
}

//- (void) buttonPushed:(id)sender
//{
//	NSLog(@"It works!");
//}


//-(IBAction)changeMe:(UIButton*)button
//{
//    NSLog(@"Button Pushed");
//    if (button.selected == NO)
//    {
//        [button setSelected:YES];
//        [button setImage:[UIImage imageNamed:@"flavor-flav.png"] forState:UIControlStateSelected];
//    }
//    else
//    {
//        [button setSelected:NO];
//        [button setImage:[UIImage imageNamed:@"Mobile Makers Academy Official1_93x93.png"] forState:UIControlStateSelected];
//    }
//}


- (IBAction)onStartPressed:(id)sender
{
    stopWatchLabel.text = @"START PRESSED";
    startDate = [[NSDate date]retain];
    
    // Create the stop watch timer that fires every 10 ms
    stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/10.0
                                                      target:self
                                                    selector:@selector(updateTimer)
                                                    userInfo:nil
                                                     repeats:YES];
}


- (IBAction)onStopPressed:(id)sender
{
    [stopWatchTimer invalidate];
    stopWatchTimer = nil;
    [self updateTimer];
}


- (void)updateTimer
{
    static NSInteger counter = 0;
    stopWatchLabel.text = [NSString stringWithFormat:@"Counter: %i", counter++];
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
