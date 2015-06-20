//
//  ParallaxVC.m
//  MVAnimatorDemo
//
//  Created by indianic on 04/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import "ParallaxVC.h"
#import "MVAnimator.h"

@interface ParallaxVC (){
    MVAnimator *animator;
}
@property (weak, nonatomic) IBOutlet UIImageView *sun;
@property (weak, nonatomic) IBOutlet UIImageView *cloud3;
@property (weak, nonatomic) IBOutlet UITableView *tblView;
@property (weak, nonatomic) IBOutlet UIImageView *bgView;
@property (weak, nonatomic) IBOutlet UIImageView *cloud;
@property (weak, nonatomic) IBOutlet UIImageView *cloud2;

@end

@implementation ParallaxVC

- (void)viewDidLoad {
    [super viewDidLoad];
    animator = [[MVAnimator alloc]init];
    animator.scrollDirection = kAnimtorDirectionVericle;
    // Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated{
    animator.scrollView = _tblView;
    
    MVAnimation *aBgViewAnimation = [[MVAnimation alloc]initWithType:kMVAnimationTranslate targetOffset:CGPointMake(-200, 0) ref:_bgView time:1.0 beginTime:-0.5];
    MVAnimation *aSunAnimation = [[MVAnimation alloc]initWithType:kMVAnimationTranslate targetOffset:CGPointMake(0, 60) ref:_sun time:1.0 beginTime:-0.5];
        MVAnimation *aCloudAnim1 = [[MVAnimation alloc]initWithType:kMVAnimationTranslate targetOffset:CGPointMake(50, 0) ref:_cloud time:1.0 beginTime:-0.5];
        MVAnimation *aCloudAnim2 = [[MVAnimation alloc]initWithType:kMVAnimationTranslate targetOffset:CGPointMake(70, 0) ref:_cloud2 time:1.0 beginTime:-0.5];
        MVAnimation *aCloudAnim3 = [[MVAnimation alloc]initWithType:kMVAnimationTranslate targetOffset:CGPointMake(100, 0) ref:_cloud3 time:1.0 beginTime:-0.5];
    [animator.animations addObject:aBgViewAnimation];
    [animator.animations addObject:aSunAnimation];
    [animator.animations addObject:aCloudAnim1];
    [animator.animations addObject:aCloudAnim2];
    [animator.animations addObject:aCloudAnim3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView DataSource and Delegates
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    return cell;
}

//Optional
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
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
