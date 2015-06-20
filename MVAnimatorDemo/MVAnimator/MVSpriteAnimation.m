//
//  MVSpriteAnimation.m
//  MVAnimatorDemo
//
//  Created by indianic on 04/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import "MVSpriteAnimation.h"

@implementation MVSpriteAnimation
@dynamic view;
-(instancetype)init{
    self=[super init];

    return self;
}
-(void)animate:(CGPoint)currentTime factor:(CGPoint)factor{
        NSInteger newX=(_totalFrames*currentTime.x/1.0);
        newX *=_frameWidth;
    NSLog(@"%d",newX);
        self.view.layer.contentsRect = CGRectMake(1.0*newX/_totalWidth, 0, 1.0*_frameWidth/_totalWidth, 1);
}

-(void)setView:(UIImageView *)aView{

    aView.layer.contentsRect = CGRectMake(0, 0, 1.0*_frameWidth/_totalWidth, 1);
    [super setView:aView];
}
@end
