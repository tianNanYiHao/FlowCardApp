//
//  AboutUSViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/19.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "AboutUSViewController.h"

@interface AboutUSViewController ()

@end

@implementation AboutUSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeLeftIetm];
    self.navigationItem.title = @"关于我们";
    // Do any additional setup after loading the view from its nib.
    
    
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
