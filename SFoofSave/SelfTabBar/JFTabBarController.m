//
//  JFTabBarController.m
//  SFoofSave
//
//  Created by Lff on 16/8/9.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "JFTabBarController.h"
#import "SingViewController.h"

@interface JFTabBarController ()<UITabBarControllerDelegate>

@end

@implementation JFTabBarController

- (void)viewDidLoad {
     [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"11%@",self.view.subviews); //能打印出所有子视图,和其frame
    self.delegate = self;

    
}


- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    NSLog(@"index %ld" , tabBarController.selectedIndex);
    
    if ( [[Tool objectforkey:isSingIn] isEqualToString:SingNo]) {
        SingViewController *s = [[SingViewController alloc] initWithNibName:@"SingViewController" bundle:nil];
        [self presentViewController:s animated:YES completion:nil];
    }else{
        // do nothing
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
