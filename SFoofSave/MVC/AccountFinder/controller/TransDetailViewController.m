//
//  TransDetailViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/19.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "TransDetailViewController.h"

@interface TransDetailViewController ()

@end

@implementation TransDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeLeftIetm];
    
    // Do any additional setup after loading the view from its nib.
   self.navigationItem.title = @"交易详情";
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
