//
//  MVAnimator.m
//  MVAnimatorDemo
//
//  Created by indianic on 03/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import "MVAnimator.h"

@implementation MVAnimator

-(instancetype)init{
    self = [super init];
    _animations = [NSMutableArray array];
    return self;
}

-(void)setScrollView:(UIScrollView *)scrollView{
    _scrollView = scrollView;
    [_scrollView addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld | NSKeyValueObservingOptionInitial context:nil];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    NSValue *newValue = change[@"new"];
    NSValue *oldValue = change[@"old"];
    
    CGFloat factorX = (newValue.CGPointValue.x-oldValue.CGPointValue.x)*1.0/_scrollView.frame.size.width;
    CGFloat factorY = (newValue.CGPointValue.y-oldValue.CGPointValue.y)*1.0/_scrollView.frame.size.height;
    
    CGFloat timeX =  _scrollView.contentOffset.x/_scrollView.frame.size.width;
    CGFloat timeY =  _scrollView.contentOffset.y/_scrollView.frame.size.height;
    
    for (MVAnimation *animation in _animations) {
        [animation animate:CGPointMake(timeX, timeY) factor:CGPointMake(factorX, factorY)];
    }

}
@end
