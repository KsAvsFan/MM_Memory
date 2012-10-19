//
//  PictureView.h
//  MM_Memory
//
//  Created by Jamie Thomason on 10/17/12.
//  Copyright (c) 2012 Jamie Thomason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PictureView : UIImageView
{
    PictureView*  firstSelected;
    PictureView*  secondSelected;
    int        clicks;
    
}

@property (nonatomic, retain) NSString *imageName;
@property (nonatomic, assign, getter=isMatched) BOOL matched;


@end
