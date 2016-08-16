//
//  HomeViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/10.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "HomeViewController.h"
#import "SingViewController.h"
#import "OpenSureViewController.h"//开卡确认
#import "BuyCardViewController.h" //购卡

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    

    
}

//开卡
- (IBAction)openCard:(id)sender {
    if ([[Tool objectforkey:isSingIn] isEqualToString:SingNo]) {
        SingViewController *sing = [[SingViewController alloc] initWithNibName:@"SingViewController" bundle:nil];
      [self presentViewController:sing animated:YES completion:nil];
    }else{
        OpenSureViewController *sure = [[OpenSureViewController alloc] initWithNibName:@"OpenSureViewController" bundle:nil];
        sure.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:sure animated:YES];
    }

    
}


//购卡
- (IBAction)buyCard:(id)sender {
    if ([[Tool objectforkey:isSingIn] isEqualToString:SingNo]) {
        SingViewController *sing = [[SingViewController alloc] initWithNibName:@"SingViewController" bundle:nil];
        [self presentViewController:sing animated:YES completion:nil];
    }else{
        BuyCardViewController *card = [[BuyCardViewController alloc] initWithNibName:@"BuyCardViewController" bundle:nil];
        card.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:card animated:YES];
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
