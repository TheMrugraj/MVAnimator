//
//  UIImageView+MVSpriteAnimatedImageView.m
//  MVAnimatorDemo
//
//  Created by indianic on 04/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import "UIImageView+MVSpriteAnimatedImageView.h"


@implementation UIImageView (MVSpriteAnimatedImageView)

-(void)animationWithTotalSize:(CGSize)sizeOfSpriteSheet animator:(MVAnimator*)animator{

    
    NSInteger intFrames =  sizeOfSpriteSheet.width/self.frame.size.width;
    MVSpriteAnimation *spriteAnimation = [[MVSpriteAnimation alloc]init];

    spriteAnimation.totalFrames =  intFrames;
    spriteAnimation.frameWidth = self.frame.size.width;
    spriteAnimation.totalWidth = sizeOfSpriteSheet.width;
    spriteAnimation.view = self;
    [animator.animations addObject:spriteAnimation];
    
}
@end
