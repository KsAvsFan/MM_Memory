//
//  MMFlipsideViewController.h
//  MM_Memory
//
//  Created by Jamie Thomason on 10/17/12.
//  Copyright (c) 2012 Jamie Thomason. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MMFlipsideViewController;

@protocol MMFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(MMFlipsideViewController *)controller;
@end

@interface MMFlipsideViewController : UIViewController

@property (assign, nonatomic) id <MMFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
