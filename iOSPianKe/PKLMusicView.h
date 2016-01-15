//
//  PKLMusicView.h
//  iOSPianKe
//
//  Created by ma c on 16/1/15.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PKLMusicView : UIView
@property (strong,nonatomic) UIImageView *musicImage;
@property (strong,nonatomic) UILabel *musicName;
@property (strong,nonatomic) UILabel *musicTrackList;
@property (strong,nonatomic) UIButton *startBtn;
@property (strong,nonatomic) UIButton *backBtn;
@end
