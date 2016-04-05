//
//  DemoMainViewController.m
//  DemoBouncePagination
//
//  Created by noahlu on 14-9-5.
//  Copyright (c) 2014年 noahlu<codedancerhua@gmail.com>. All rights reserved.
//

#import "DemoMainViewController.h"
#import "DemoSubViewController.h"

@interface DemoMainViewController ()

@end

@implementation DemoMainViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.scrollView.contentSize = CGSizeMake(320, 400);
    self.subViewController = [[DemoSubViewController alloc] init];
    self.subViewController.mainViewController = self;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 300, 400)];
    view.backgroundColor = [UIColor blueColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake((300-80)/2.f, (400-30)/2.f, 80, 30)];
    label.font = [UIFont systemFontOfSize:14];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"第一页";
    
    [view addSubview:label];
    [self.scrollView addSubview:view];
}

@end
