//
//  DemoSubTableViewController.m
//  DemoBouncePagination
//
//  Created by noahlu on 14-9-6.
//  Copyright (c) 2014年 noahlu<codedancerhua@gmail.com>. All rights reserved.
//

#import "DemoSubTableViewController.h"

@interface DemoSubTableViewController ()
@property(nonatomic, strong)NSMutableArray *dataListOne;
@end

@implementation DemoSubTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.dataListOne = [NSMutableArray array];
    for (int i = 0; i<10; i++) {
        [self.dataListOne addObject:[NSString stringWithFormat:@"Page two text %d", i]];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataListOne count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50.f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellId = @"cellname";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    UILabel *cellLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, cell.frame.size.width, 40)];
    cellLabel.backgroundColor = [UIColor grayColor];
    cellLabel.text = [self.dataListOne objectAtIndex:indexPath.row];
    cellLabel.textAlignment = NSTextAlignmentCenter;
    
    [cell.contentView addSubview:cellLabel];
    
    return cell;
}

@end
