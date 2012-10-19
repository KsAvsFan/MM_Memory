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

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
{
    UITouch* touch = [touches anyObject];
    CGPoint touchLocation = [ touch locationInView:self.superview];
    NSLog(@"Touches began x=%f y=%f", touchLocation.x, touchLocation.y);
    NSLog(@"Self.center x=%f y=%f", self.center.x, self.center.y);
    
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
{
    UITouch* touch = [touches anyObject];
    CGPoint touchLocation = [ touch locationInView:self.superview];
    NSLog(@"Touches ended x=%f y=%f", touchLocation.x, touchLocation.y);
    NSLog(@"Self.center x=%f y=%f", self.center.x, self.center.y);
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
{
    UITouch* touch = [touches anyObject];
    CGPoint touchLocation = [ touch locationInView:self.superview];
    NSLog(@"Touches moved x=%f y=%f", touchLocation.x, touchLocation.y);
    NSLog(@"Self.center x=%f y=%f", self.center.x, self.center.y);
    NSLog(@"self.frame.size.height is: %f", self.frame.size.height);
    NSLog(@"super.frame.size.height is: %f", self.superview.frame.size.height);
    
    if (touchLocation.y < self.frame.size.height/2)
    {
        self.center = CGPointMake(self.center.x, self.frame.size.height/2);
    }
    else if (touchLocation.y > (self.superview.frame.size.width - (self.frame.size.height/2)))
    {
        self.center = CGPointMake(self.center.x, (self.superview.frame.size.width - self.frame.size.height/2));
    }
    else {
        self.center = CGPointMake(self.center.x, touchLocation.y);
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
