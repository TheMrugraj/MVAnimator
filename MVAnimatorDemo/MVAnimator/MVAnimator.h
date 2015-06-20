//
//  MVAnimator.h
//  MVAnimatorDemo
//
//  Created by indianic on 03/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVAnimation.h"
#import "MVSpriteAnimation.h"
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    kAnimtorDirectionHorizontal,
    kAnimtorDirectionVericle,
} MVAnimatorDirection;

@interface MVAnimator : NSObject
@property(nonatomic,strong)MVAnimation      *animation;
@property(nonatomic,strong)NSMutableArray   *animations;
@property(nonatomic,strong)UIScrollView     *scrollView;
@property(nonatomic,assign)MVAnimatorDirection scrollDirection;
@end
