//
//  ViewController.m
//  MVAnimatorDemo
//
//  Created by indianic on 03/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import "ViewController.h"
#import "MVAnimator.h"
@interface ViewController ()
{
    MVAnimator *animator;
    IBOutlet UIImageView *imgView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    animator = [[MVAnimator alloc]init];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    CGSize size = _scrollView.contentSize;
    size.height = _scrollView.frame.size.height;
    size.width  = _scrollView.frame.size.width*3.0;
    [_scrollView setContentSize:size];
    animator.scrollView = _scrollView;

    
    
    for (UIImageView *imgViewObj in _imgViews) {
        int rndValue = 50 + arc4random() % (200 - 50);
        imgViewObj.alpha = 0.3;
        MVAnimation *animation = [[MVAnimation alloc]initWithType:kMVAnimationTranslate targetOffset:CGPointMake(-500,0) ref:imgViewObj time:(rndValue/100.0)*3.0 beginTime:-0.5];
        MVAnimation *animationScale = [[MVAnimation alloc]initWithType:kMVAnimationScale targetOffset:CGPointMake(rndValue/100.0,rndValue/100.0) ref:imgViewObj time:(rndValue/100.0)*3.0 beginTime:-0.5];
        
        MVAnimation *animationAlpha = [[MVAnimation alloc]initWithType:kMVAnimationAlpha targetOffset:CGPointMake(1,0) ref:imgViewObj time:(rndValue/100.0)*3.0 beginTime:-0.5];
        
        [animator.animations addObject:animation];
        [animator.animations addObject:animationScale];
        [animator.animations addObject:animationAlpha];
    }
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
