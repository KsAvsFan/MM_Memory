//
//  PictureView.m
//  MM_Memory
//
//  Created by Jamie Thomason on 10/17/12.
//  Copyright (c) 2012 Jamie Thomason. All rights reserved.
//

#import "PictureView.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation PictureView

@synthesize imageName;
@synthesize matched;

static int numberOfTouches, numberOfMatches, numberOfMisses;
static PictureView *lastimage;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)flipCard
{
    numberOfTouches++;
    [self setHighlighted:true];
    [self setUserInteractionEnabled:false];
    
    switch (numberOfTouches)
    {
        case 1:
            lastimage = self;
            NSLog(@"number of touches is %i", numberOfTouches);
            break;
        case 2:
            NSLog(@"number of touches is %i", numberOfTouches);
            numberOfTouches = 0;
            
            if (lastimage.tag == self.tag) {
                numberOfMatches++;
                NSLog(@"number of touches is %i", numberOfTouches);
                NSLog(@"they match");
            }
            else
            {
                numberOfMisses++;
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
                NSLog(@"number of touches is %i", numberOfTouches);
                NSLog(@"they don't match");
                [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(resetTwoCards)
                                               userInfo:nil
                                                repeats:NO];
            }
            break;
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self flipCard];
}

-(void)resetTwoCards
{
    [self setHighlighted: false];
    [self setUserInteractionEnabled:true];
    [lastimage setHighlighted:false];
    [lastimage setUserInteractionEnabled:true];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
