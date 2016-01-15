//
//  PKLTabView.m
//  iOSPianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import "PKLTabView.h"
#import "PKTableViewCell.h"
@interface PKLTabView()<UITableViewDelegate,UITableViewDataSource>
@property (strong,nonatomic) NSArray* text;
@property (strong,nonatomic) NSArray* dataMenu;
@end
@implementation PKLTabView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self)
    {
        self.delegate = self;
        self.dataSource = self;
        self.text = @[@"首页",@"电台",@"阅读",@"社区",@"碎片",@"良品",@"设置"];
        self.dataMenu= @[@"首页",@"电台",@"阅读",@"社区",@"碎片",@"良品",@"设置"];
        self.bounces = NO;
        self.separatorStyle = NO;
        [self registerClass:[PKTableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return self;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 7;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    PKTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    
  
    
    [cell setBackgroundColor:RGB(51, 51, 51)];
    cell.text.text= self.text[indexPath.row];
    cell.backimage.image=[UIImage imageNamed:self.dataMenu[indexPath.row]];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
@end
