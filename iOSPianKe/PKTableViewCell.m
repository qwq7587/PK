//
//  PKTableViewCell.m
//  iOSPianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import "PKTableViewCell.h"
#import "Masonry.h"
@implementation PKTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubview:self.text];
        [self addSubview:self.backimage];

    }
    return self;
}
-(void)layoutSubviews
{
    WS(weakSelf);
    [_backimage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(CGSizeMake(25,25));
        make.centerY.equalTo(weakSelf.mas_centerY);
        make.left.equalTo(weakSelf.mas_left).offset(20);
    }];
    [_text mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.backimage.mas_right).offset(30);
        make.size.equalTo(CGSizeMake(50,20));
        make.centerY.equalTo(weakSelf.mas_centerY);
    }];
}

-(UIImageView *)backimage
{
    if (!_backimage)
    {
        _backimage =[[UIImageView alloc]init];
    }
    return _backimage;
}
-(UILabel *)text
{
    if (!_text)
    {
        _text = [[UILabel alloc]init];
        _text.textColor =[UIColor whiteColor];
        _text.textAlignment =NSTextAlignmentLeft;
        _text.font = [UIFont systemFontOfSize:14.0];

    }
    return _text;
}
- (void)awakeFromNib {
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
