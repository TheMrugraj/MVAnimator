//
//  MVAnimation.m
//  MVAnimatorDemo
//
//  Created by indianic on 03/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import "MVAnimation.h"


@implementation MVAnimation

-(instancetype)initWithType:(MVAnimationType)type targetOffset:(CGPoint)offset ref:(UIView *)view time:(CGFloat)time beginTime:(CGFloat)begin{
    self =  [super init];
    _animationType  = type;
    _offset         = offset;
    _time           = time;
    _view           = view;
    _beginTime      = begin;
    return self;
}

-(void)animate:(CGPoint)currentTime factor:(CGPoint)factor{
    
    
    if(currentTime.x<_time && currentTime.x>_beginTime){
        switch (_animationType) {
            case kMVAnimationTranslate:{
                CGFloat currentX = 1.0*factor.x*_offset.x/_time;
                CGFloat currentY = 1.0*factor.x*_offset.y/_time;
                _view .transform =  CGAffineTransformTranslate(_view.transform, currentX, currentY);
                break;
            }
            case kMVAnimationRotation:{
                
                break;
            }
            case kMVAnimationScale:{
                CGFloat currentX = 1.0*factor.x*_offset.x/_time;
                CGFloat currentY = 1.0*factor.x*_offset.y/_time;
                _view .transform =  CGAffineTransformScale(_view.transform, 1.0+currentX, 1.0+currentY);
                break;
            }
            case kMVAnimationAlpha:{
                CGFloat currentX = _offset.x*factor.x/_time;
                _view.alpha += currentX;
                break;
            }
            default:
                break;
        }
    }
    
    if(currentTime.y<_time && currentTime.y>_beginTime){
        switch (_animationType) {
            case kMVAnimationTranslate:{
                CGFloat currentX = 1.0*factor.y*_offset.x/_time;
                CGFloat currentY = 1.0*factor.y*_offset.y/_time;
                _view .transform =  CGAffineTransformTranslate(_view.transform, currentX, currentY);
                break;
            }
            case kMVAnimationRotation:{
                
                break;
            }
            case kMVAnimationScale:{
                CGFloat currentX = 1.0*factor.y*_offset.x/_time;
                CGFloat currentY = 1.0*factor.y*_offset.y/_time;
                _view .transform =  CGAffineTransformScale(_view.transform, 1.0+currentX, 1.0+currentY);
                break;
            }
            case kMVAnimationAlpha:{
                CGFloat currentX = _offset.x*factor.y/_time;
                _view.alpha += currentX;
                break;
            }
            default:
                break;
        }
    }
    
}



@end
