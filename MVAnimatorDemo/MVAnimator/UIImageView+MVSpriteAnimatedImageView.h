//
//  UIImageView+MVSpriteAnimatedImageView.h
//  MVAnimatorDemo
//
//  Created by indianic on 04/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVAnimator.h"

@interface UIImageView (MVSpriteAnimatedImageView)

-(void)animationWithTotalSize:(CGSize)sizeOfSpriteSheet animator:(MVAnimator*)animator;
@end
