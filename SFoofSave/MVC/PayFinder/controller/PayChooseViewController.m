//
//  PayChooseViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/15.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "PayChooseViewController.h"
#import "PackagesAddViewController.h"
#import "FlowBagAddViewController.h"
#import "KeepNumViewController.h"


@interface PayChooseViewController ()

@end

@implementation PayChooseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //套餐续费+购买流量包+停机保号
    self.navigationItem.title = @"缴费选择";

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//套餐续费
- (IBAction)packagesClick:(id)sender {
    PackagesAddViewController *h = [[PackagesAddViewController alloc] initWithNibName:@"PackagesAddViewController" bundle:nil];
    h.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:h animated:YES];
}
//购买流量包
- (IBAction)flowBagClick:(id)sender {
    FlowBagAddViewController *f = [[FlowBagAddViewController alloc] initWithNibName:@"FlowBagAddViewController" bundle:nil];
    f.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:f animated:YES];
    
    
}
//停机保号
- (IBAction)keepNum:(id)sender {
    KeepNumViewController *k = [[KeepNumViewController alloc] initWithNibName:@"KeepNumViewController" bundle:nil];
    k.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:k animated:YES];
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
