//
//  PictureView.h
//  MM_Memory
//
//  Created by Jamie Thomason on 10/17/12.
//  Copyright (c) 2012 Jamie Thomason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PictureView : UIImageView

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;


@end
