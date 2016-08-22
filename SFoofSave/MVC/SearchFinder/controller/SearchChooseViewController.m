//
//  SearchChooseViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/16.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "SearchChooseViewController.h"
#import "FlowStatisViewController.h"
#import "FlowDateChooseViewController.h"
@interface SearchChooseViewController ()

@end

@implementation SearchChooseViewController

- (void)viewDidLoad {
     [super viewDidLoad];
    [self changeLeftIetm];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title  = @"查询方式";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//当天详情
- (IBAction)daySearch:(id)sender {
    FlowStatisViewController *fs = [[FlowStatisViewController alloc] initWithNibName:@"FlowStatisViewController" bundle:nil];
    [self.navigationController pushViewController:fs animated:YES];
    
    
}
//本月流量
- (IBAction)monthSearch:(id)sender {
    FlowStatisViewController *fs = [[FlowStatisViewController alloc] initWithNibName:@"FlowStatisViewController" bundle:nil];
    [self.navigationController pushViewController:fs animated:YES];
}
//自定义查询
- (IBAction)DIYSearch:(id)sender {
    
    FlowDateChooseViewController *fdc = [[FlowDateChooseViewController alloc] initWithNibName:@"FlowDateChooseViewController" bundle:nil];
    [self.navigationController pushViewController:fdc animated:YES];
    
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
