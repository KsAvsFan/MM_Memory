//
//  PictureView.m
//  MM_Memory
//
//  Created by Jamie Thomason on 10/17/12.
//  Copyright (c) 2012 Jamie Thomason. All rights reserved.
//

#import "PictureView.h"

@implementation PictureView

@synthesize imageName;
@synthesize matched;

static int clicks = 0;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code


    }
    return self;
}

- (void) flipCard
{
    [self setHighlighted:YES];
    [self setUserInteractionEnabled:NO];
}


- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
//    firstSelected = [[UIImageView alloc] init];
    NSLog(@"Entering touchesEnded. clicks = %i", clicks);
    if (clicks< 2)
    {
        [self flipCard];
        if (clicks == 0)
            {
                firstSelected = [[PictureView alloc] initWithImage:self.image];
            }
        if (clicks==1)
            {
                secondSelected = [[PictureView alloc] initWithImage:self.image];
                [self checkForMatch];
            }
        clicks++;
    }

}

- (void) checkForMatch
{
    if (firstSelected.image == secondSelected.image)
    {
        NSLog(@"They match");
        clicks = 0;
    }
    // check to see if the two items match
    // if they match, reset count = 0 and return
    // if they don't match, reset count = 0 and flip cards back over
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
