//
//  OpenSureViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/15.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "OpenSureViewController.h"
#import "OpenUPViewController.h"
@interface OpenSureViewController ()

@end

@implementation OpenSureViewController

- (void)viewDidLoad {
     [super viewDidLoad];
    [self changeLeftIetm];
    // Do any additional setup after loading the view from its nib.
    //开卡确认 agree
    self.navigationItem.title = @"开卡";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)iAgreeBtnClick:(id)sender {
    OpenUPViewController *openUp = [[OpenUPViewController alloc] initWithNibName:@"OpenUPViewController" bundle:nil];
    [self.navigationController pushViewController:openUp animated:YES];
    
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
