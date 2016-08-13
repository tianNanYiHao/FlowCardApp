//
//  PayViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/9.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "PayViewController.h"
#import "ssViewController.h"
@interface PayViewController ()

@end

@implementation PayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"缴费";
    self.view.backgroundColor = [UIColor whiteColor];
    
}
- (IBAction)btn1:(id)sender {
    ssViewController *H=  [[ssViewController alloc] init];
    H.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:H animated:YES];
    
    
}
- (IBAction)btn4:(id)sender {

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
