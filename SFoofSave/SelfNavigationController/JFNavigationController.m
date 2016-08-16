//
//  JFNavigationController.m
//  SFoofSave
//
//  Created by Lff on 16/8/9.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "JFNavigationController.h"

@interface JFNavigationController ()

@end

@implementation JFNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],
                                                 NSFontAttributeName:[UIFont systemFontOfSize:21],
                                                 }];
    self.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationBar.barTintColor = [Common hexStringToColor:@"0D5FF7"];
    self.navigationBar.translucent = NO;
    
//    UIImageView *backView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"返回"]];
//    backView.frame = CGRectMake(0, 0, 27, 27);
//    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:backView.image style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
//    self.navigationItem.leftBarButtonItem = leftItem;
    
}
- (void)goBack{
    [self.navigationController popViewControllerAnimated:YES];
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
