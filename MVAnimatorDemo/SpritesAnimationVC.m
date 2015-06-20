//
//  SpritesAnimationVC.m
//  MVAnimatorDemo
//
//  Created by indianic on 04/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import "SpritesAnimationVC.h"
#import "MVAnimator.h"
#import "UIImageView+MVSpriteAnimatedImageView.h"
@interface SpritesAnimationVC ()
{
    MVAnimator *animator;
}
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation SpritesAnimationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    animator = [[MVAnimator alloc]init];
    _scrollView.contentSize=CGSizeMake(self.view.frame.size.width*3, 200);
    animator.scrollView=_scrollView;
    [_spriteImageView animationWithTotalSize:_spriteImageView.image.size animator:animator];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
