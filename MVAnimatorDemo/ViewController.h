//
//  ViewController.h
//  MVAnimatorDemo
//
//  Created by indianic on 03/06/15.
//  Copyright (c) 2015 MV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *imgViews;


@end

