//
//  PKLMusicView.m
//  iOSPianKe
//
//  Created by ma c on 16/1/15.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import "PKLMusicView.h"
#import "Masonry.h"
@implementation PKLMusicView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self addSubview:self.backBtn];
        [self addSubview:self.musicImage];
        [self addSubview:self.musicName];
        [self addSubview:self.musicTrackList];
        [self addSubview:self.startBtn];
    }
    return self;
}
-(void)layoutSubviews
{
    WS(weakSelf);
    [_backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.equalTo(weakSelf).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    [_startBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf.mas_centerY);
        make.right.mas_equalTo(weakSelf.mas_right).offset(-30);
        make.size.mas_equalTo(CGSizeMake(20, 20));
    }];
    [_musicImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.mas_left).offset(10);
        make.centerY.equalTo(weakSelf.mas_centerY);
        make.size.mas_equalTo(CGSizeMake(40, 40));
    }];
    [_musicName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.musicImage.mas_right).offset(10);
        make.centerY.equalTo(weakSelf.mas_centerY).offset(-8);
        make.height.equalTo(16);
        make.right.equalTo(weakSelf.startBtn.mas_left).offset(-20);

    }];
    [_musicTrackList mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.musicImage.mas_right).offset(10);
        make.right.equalTo(weakSelf.startBtn.mas_left).offset(-20);
        make.centerY.equalTo(weakSelf.mas_centerY).offset(8);
        make.height.equalTo(11);
    }];
    
}
-(UIImageView*)musicImage;
{
    if (!_musicImage)
    {
        _musicImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"音乐"]];
    }
    return _musicImage;
}
-(UILabel *)musicName
{
    if (!_musicName)
    {
        _musicName = [[UILabel alloc]init];
        _musicName.textColor = [UIColor whiteColor];
        _musicName.textAlignment = NSTextAlignmentLeft;
        _musicName.text = @"龙战骑士";
        _musicName.font = [UIFont systemFontOfSize:15.0];
    }
    return _musicName;
}
-(UILabel *)musicTrackList
{
    if (!_musicTrackList)
    {
        _musicTrackList = [[UILabel alloc]init];
        _musicTrackList.textAlignment = NSTextAlignmentLeft;
        _musicTrackList.textColor = [UIColor whiteColor];
        _musicTrackList.text = @"《摩羯座》";
        _musicTrackList.font = [UIFont systemFontOfSize:13.0];
    }
    return _musicTrackList;
}
-(UIButton *)startBtn
{
    if (!_startBtn)
    {
        _startBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _startBtn.selected = NO;
        [_startBtn setBackgroundImage:[UIImage imageNamed:@"播放"] forState:(UIControlStateNormal)];
        [_startBtn setBackgroundImage:[UIImage imageNamed:@"暂停"] forState:(UIControlStateSelected)];
    }
    return _startBtn;
}
-(UIButton *)backBtn
{
    if (!_backBtn)
    {
        _backBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _backBtn.backgroundColor = RGB(28,28,28);
    }
    return _backBtn;
}
@end
