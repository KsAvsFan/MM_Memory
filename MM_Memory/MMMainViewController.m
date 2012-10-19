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

@synthesize picOneOneCard;
@synthesize picOneTwoCard;
@synthesize picOneThreeCard;
@synthesize picTwoOneCard;
@synthesize picTwoTwoCard;
@synthesize picTwoThreeCard;
@synthesize picThreeOneCard;
@synthesize picThreeTwoCard;
@synthesize picThreeThreeCard;
@synthesize picFourOneCard;
@synthesize picFourTwoCard;
@synthesize picFourThreeCard;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonPushed:(id)sender
{
	NSLog(@"It works!");
}

- (void) setCards
{
    self.picOneOneCard =  @"panerai1_93_112.png"; //1
    self.picOneTwoCard =  @"panerai2_93_112"; //2
    self.picOneThreeCard =  @"panerai3_93_112"; //3
    self.picTwoOneCard =  @"panerai4_93_112"; //4
    self.picTwoTwoCard =  @"flavor-flav.png"; //ff
    self.picTwoThreeCard =  @"panerai5_93_112"; //5
    self.picThreeOneCard =  @"panerai5_93_112"; //5
    self.picThreeTwoCard =  @"panerai4_93_112"; //4
    self.picThreeThreeCard =  @"panerai1_93_112"; //1
    self.picFourOneCard =  @"panerai2_93_112"; //2
    self.picFourTwoCard =  @"flavor-flav.png"; //ff
    self.picFourThreeCard =  @"panerai3_93_112"; //3

}

-(IBAction)changeMe:(UIButton*)button
{
    NSLog(@"Button Pushed");
    if (button.selected == NO)
    {
        [button setSelected:YES];
        [button setImage:[UIImage imageNamed:@"flavor-flav.png"] forState:UIControlStateSelected];
    }
    else
    {
        [button setSelected:NO];
        [button setImage:[UIImage imageNamed:@"Mobile Makers Academy Official1_93x93.png"] forState:UIControlStateSelected];
    }
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
