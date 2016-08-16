//
//  UIViewController+LeftItemSSL.m
//  SFoofSave
//
//  Created by Lff on 16/8/16.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "UIViewController+LeftItemSSL.h"

@implementation UIViewController (LeftItemSSL)

- (void)changeLeftIetm{
    UIImageView *backView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"返回"]];
    backView.frame = CGRectMake(0, 0, 27, 27);
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:backView.image style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    self.navigationItem.leftBarButtonItem = leftItem;
    
}
- (void)goBack{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
