//
//  DemoSubViewController.m
//  NLScrollPagination
//
//  Created by noahlu on 14-8-11.
//  Copyright (c) 2014年 noahlu<codedancerhua@gmail.com>. All rights reserved.
//

#import "DemoSubViewController.h"

@interface DemoSubViewController ()

@end

@implementation DemoSubViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 注意：contentsize.height必须要大于bounds.size.height，否则不能滚动，也就无法回到父view
    self.scrollView.contentSize = CGSizeMake(320, 600);
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10, 0, 300, 200)];
    view.backgroundColor = [UIColor grayColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake((300-80)/2.f, (200-30)/2.f, 80, 30)];
    label.font = [UIFont systemFontOfSize:14];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"第二页";
    
    [view addSubview:label];
    [self.scrollView addSubview:view];
}


@end
