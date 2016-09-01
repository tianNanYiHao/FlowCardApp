//
//  AppDelegate.m
//  SFoofSave
//
//  Created by Lff on 16/8/3.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "MyAppDelegate.h"
#import "IQKeyboardManager.h"
#import "JFNavigationController.h"

#import "HomeViewController.h"
#import "PayViewController.h"
#import "SearchViewController.h"
#import "AccountViewController.h"
#import "JFTabBarController.h"
#import <Bugly/Bugly.h>




@interface MyAppDelegate ()

@end

@implementation MyAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Bugly startWithAppId:@"a24c517102"];
    
    [IQKeyboardManager sharedManager];

    //1
    HomeViewController *homeC = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    JFNavigationController *homeNav = [[JFNavigationController alloc] initWithRootViewController:homeC];
    homeNav.tabBarItem.title = @"首页";
    homeNav.tabBarItem.image = [UIImage imageNamed:@"首页-正常"];
    homeNav.tabBarItem.selectedImage = [[UIImage imageNamed:@"首页-选中"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //2
    PayViewController *payC = [[PayViewController alloc] initWithNibName:@"PayViewController" bundle:nil];
    JFNavigationController *payNav = [[JFNavigationController alloc] initWithRootViewController:payC];
    payNav.tabBarItem.title = @"缴费";
    payNav.tabBarItem.image = [UIImage imageNamed:@"缴费-正常"];
    payNav.tabBarItem.selectedImage = [[UIImage imageNamed:@"缴费-选中"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //3
    SearchViewController *searchC = [[SearchViewController alloc] initWithNibName:@"SearchViewController" bundle:nil];
    JFNavigationController *sarchNav = [[JFNavigationController alloc] initWithRootViewController:searchC];
    sarchNav.tabBarItem.title = @"查询";
    sarchNav.tabBarItem.image = [UIImage imageNamed:@"查询-正常"];
    sarchNav.tabBarItem.selectedImage = [[UIImage imageNamed:@"查询-选中"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //4
    AccountViewController *accountC = [[AccountViewController alloc] initWithNibName:@"AccountViewController" bundle:nil];
    JFNavigationController *accountNav = [[JFNavigationController alloc] initWithRootViewController:accountC];
    accountNav.tabBarItem.title = @"账户";
    accountNav.tabBarItem.image = [UIImage imageNamed:@"账户-正常"];
    accountNav.tabBarItem.selectedImage = [[UIImage imageNamed:@"账户-选中"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //tabBar
    JFTabBarController  *tabBarC = [[JFTabBarController alloc] init];
    tabBarC.viewControllers = @[homeNav,payNav,sarchNav,accountNav];
    
    //_win
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.rootViewController = tabBarC;
    [_window makeKeyWindow];
    
    //登录
    [Tool setobject:SingNo forkey:isSingIn];
    
    
    
    
    
    


    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
