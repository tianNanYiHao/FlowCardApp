//
//  SingViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/15.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "SingViewController.h"

@interface SingViewController ()
@property (weak, nonatomic) IBOutlet UITextField *accountLab;
@property (weak, nonatomic) IBOutlet UITextField *smsCode;

@end

@implementation SingViewController

- (void)viewDidLoad {
     [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"登录";
    
    
}

//返回
- (IBAction)dismissBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
//登录
- (IBAction)singIN:(id)sender {
    if ([_accountLab.text isEqualToString:@"15151474388"] && [_smsCode.text isEqualToString:@"123456"]) {
            [Tool setobject:SingYes forkey:isSingIn];
    }
    
    
    
    if ([[Tool objectforkey:isSingIn] isEqualToString:SingYes]) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
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
