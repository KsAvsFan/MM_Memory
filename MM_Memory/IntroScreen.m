//
//  IntroScreen.m
//  MM_Memory
//
//  Created by Jamie Thomason on 10/22/12.
//  Copyright (c) 2012 Jamie Thomason. All rights reserved.
//

#import "IntroScreen.h"
#import "MMMainViewController.h"

@interface IntroScreen ()

@end

@implementation IntroScreen

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)startGame:(UIButton*)button
{
    MMMainViewController* mmMainViewController = [[MMMainViewController alloc] initWithNibName:@"MainStoryboard" bundle:nil];
    mmMainViewController.view.alpha = 0.0f;
    [self.view addSubview:mmMainViewController.view];
    
    [UIView animateWithDuration:2.0
                     animations:^{
                         mmMainViewController.view.alpha = 1.0f;
                     }
                     completion:^(BOOL finished) {
                         [mmMainViewController startGame];
                     }];
}


@end
