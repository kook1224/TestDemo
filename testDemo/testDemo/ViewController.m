//
//  ViewController.m
//  testDemo
//
//  Created by zhu jun on 15/6/10.
//  Copyright (c) 2015年 sportsexp. All rights reserved.
//

#import "ViewController.h"
#import "LBViewController.h"

@interface ViewController ()

@property (nonatomic) NSDictionary *story;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"哈哈哈";
    
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}


#pragma mark - UITableViewDelegate Method

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 20;
}

#pragma mark - UITableViewDataSource Method
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 15)];
    label.font = [UIFont systemFontOfSize:12.0];
    label.text = @"测试一";
    [cell addSubview:label];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row ==0) {
        LBViewController *lbVC = [[LBViewController alloc]init];
        [self.navigationController pushViewController:lbVC animated:YES];
        
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
