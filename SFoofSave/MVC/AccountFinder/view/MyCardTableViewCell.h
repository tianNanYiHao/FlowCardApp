//
//  MyCardTableViewCell.h
//  SFoofSave
//
//  Created by Lff on 16/8/17.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MyCardDelegate<NSObject>
- (void)missBtnClick;

@end
@interface MyCardTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *stateLab; //状态 lab
@property (weak, nonatomic) IBOutlet UIImageView *stateImg; //状态 img
@property (weak, nonatomic) IBOutlet UIButton *missBtn; //挂失按钮
@property (nonatomic,assign)id<MyCardDelegate> delegate;

@end
