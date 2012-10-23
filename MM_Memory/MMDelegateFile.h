//
//  MMDelegateFile.h
//  MM_Memory
//
//  Created by Jamie Thomason on 10/22/12.
//  Copyright (c) 2012 Jamie Thomason. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MMDelegateFile <NSObject>

-(void)increaseMisses:(int)misses;

-(void)increaseMatches:(int)matches;

@end
