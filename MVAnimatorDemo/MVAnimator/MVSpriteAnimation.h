//
//  MVSpriteAnimation.h
//  MVAnimatorDemo
//
//  Created by indianic on 04/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import "MVAnimation.h"

@interface MVSpriteAnimation : MVAnimation
@property(nonatomic,assign)NSInteger totalFrames;
@property(nonatomic,assign)NSInteger frameWidth,totalWidth;

@property(nonatomic,strong)UIImageView *view;
@end
