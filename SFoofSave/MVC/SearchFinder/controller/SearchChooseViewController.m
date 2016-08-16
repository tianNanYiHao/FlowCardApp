//
//  SearchChooseViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/16.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "SearchChooseViewController.h"

@interface SearchChooseViewController ()

@end

@implementation SearchChooseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title  = @"查询方式";
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//当天查询
- (IBAction)daySearch:(id)sender {
}
//当月查询
- (IBAction)monthSearch:(id)sender {
}
//自定义查询
- (IBAction)DIYSearch:(id)sender {
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
