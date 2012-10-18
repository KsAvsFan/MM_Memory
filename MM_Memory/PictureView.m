//
//  PictureView.m
//  MM_Memory
//
//  Created by Jamie Thomason on 10/17/12.
//  Copyright (c) 2012 Jamie Thomason. All rights reserved.
//

#import "PictureView.h"

@implementation PictureView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


-(void)touched:(NSSet *)touches withEvent:(UIEvent *)event
{
        UITouch* touch = [touches anyObject];
        CGPoint touchLocation = [touch locationInView:self.superview];
        if (CGRectContainsPoint(self.frame, touchLocation))
        {
            NSLog(@"Touched inside a pic");
        }
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
