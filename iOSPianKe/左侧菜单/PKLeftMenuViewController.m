//
//  PKLeftMenuViewController.m
//  iOSPianKe
//
//  Created by 赵金鹏 on 16/1/14.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import "PKLeftMenuViewController.h"
#import "PKLeftHeadView.h"//头部
#import "PKLTabView.h"//中部
#import "PKLMusicView.h"//底部
@interface PKLeftMenuViewController ()

@property (strong, nonatomic)           PKLeftHeadView *leftheadView;
@property (strong, nonatomic)           PKLTabView *lefttabcview;
@property (strong, nonatomic)           PKLMusicView *leftmusicView;
@end

@implementation PKLeftMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RGB(51, 51, 51);
    [self.view addSubview:self.leftheadView];
    self.lefttabcview.backgroundColor = RGB(51,51,51);
    [self.view addSubview:self.lefttabcview];
    [self.view addSubview:self.leftmusicView];
    WS(weakSelf);
    [_leftheadView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.view.mas_top);
        make.height.equalTo(180);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right).offset(-40);
    }];
    [self.lefttabcview mas_makeConstraints:^(MASConstraintMaker *make)
     {
         make.top.equalTo(180);
         make.left.equalTo(weakSelf.view.mas_left);
         make.right.equalTo(weakSelf.view.mas_right);
         make.height.equalTo(VIEW_HEIGHT-180-60);
         
     }];
    [self.leftmusicView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.view.mas_left);
        make.right.mas_equalTo(weakSelf.view.mas_right).offset(-45);
        make.bottom.mas_equalTo(weakSelf.view.mas_bottom);
        make.height.mas_equalTo(@60);
    }];
    // Do any additional setup after loading the view.
}
//侧边头顶
- (PKLeftHeadView *)leftheadView{
    if (!_leftheadView) {
        _leftheadView = [[PKLeftHeadView alloc]init];
        
    }
    return _leftheadView;
}
//中间切换视图列表
-(PKLTabView *)lefttabcview
{
    if (!_lefttabcview)
    {
        _lefttabcview = [[PKLTabView alloc] init];
    }
    return _lefttabcview;
}
//底部
-(PKLMusicView *)leftmusicView
{
    if (!_leftmusicView)
    {
        _leftmusicView = [[PKLMusicView alloc] init];
    }
    return _leftmusicView;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
