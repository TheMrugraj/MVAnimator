//
//  MVAnimation.h
//  MVAnimatorDemo
//
//  Created by indianic on 03/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef enum : NSUInteger {
    kMVAnimationTranslate,
    kMVAnimationScale,
    kMVAnimationRotation,
    kMVAnimationAlpha,
    kMVAnimationSprite,
} MVAnimationType;

@interface MVAnimation : NSObject{
    
}
@property(nonatomic,assign) MVAnimationType animationType;
@property(nonatomic,assign) CGPoint offset,lastOffset;
@property(nonatomic,assign) CGFloat time,beginTime;
@property(nonatomic,weak)   UIView *view;

-(instancetype)initWithType:(MVAnimationType)type targetOffset:(CGPoint)offset ref:(UIView*)view time:(CGFloat)time beginTime:(CGFloat)begin;
-(void)animate:(CGPoint)currentTime factor:(CGPoint)factor;
@end
