//
//  MyCardTableViewCell.m
//  SFoofSave
//
//  Created by Lff on 16/8/17.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "MyCardTableViewCell.h"

@implementation MyCardTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    _missBtn.layer.masksToBounds = YES;
    _missBtn.layer.borderWidth = 1;
    _missBtn.layer.borderColor = [UIColor orangeColor].CGColor;
    _missBtn.titleLabel.textColor = [UIColor orangeColor];
    [_missBtn addTarget:self action:@selector(missBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}
-(void)missBtnClick{
    if ([_delegate respondsToSelector:@selector(missBtnClick)]) {
        [_delegate missBtnClick];
    }
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
