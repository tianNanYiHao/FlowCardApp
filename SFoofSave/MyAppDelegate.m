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





-(void)Jpush:(NSDictionary*)launchOptions{
    //启动JPushSDK
    [JPUSHService setupWithOption:launchOptions appKey:@"7060c76b204c07800b75dd86" channel:nil apsForProduction:NO];
    
    //注册通知类型
    //方式一
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0) {
        //可以添加自定义categories
        [JPUSHService registerForRemoteNotificationTypes:(UIUserNotificationTypeBadge |
                                                          UIUserNotificationTypeSound |
                                                          UIUserNotificationTypeAlert)
                                              categories:nil];
    } else {
        //categories 必须为nil
        [JPUSHService registerForRemoteNotificationTypes:(UIRemoteNotificationTypeBadge |
                                                          UIRemoteNotificationTypeSound |
                                                          UIRemoteNotificationTypeAlert)
                                              categories:nil];
    }
    
    //方式二
    //    JPUSHRegisterEntity *entity = [[JPUSHRegisterEntity alloc] init];
    //    entity.types = (UIUserNotificationTypeBadge |
    //                   UIUserNotificationTypeSound |
    //                   UIUserNotificationTypeAlert);
    //    entity.categories = nil;
    //    [JPUSHService registerForRemoteNotificationConfig:entity delegate:self];
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    [Bugly startWithAppId:@"a24c517102"];
    [Bugly startWithAppId:@"a24c517102"];
    [self Jpush:launchOptions];
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
//注册好以后 获取token
-(void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken{
    [JPUSHService registerDeviceToken:deviceToken];
}
//当收到远程通知消息时,掉用此方法
-(void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
    //这里书写的代码应该可以让程序进入到相关的页面
    
    [JPUSHService handleRemoteNotification:userInfo];
    NSLog(@"iOS7及以上系统，收到通知:%@", [self logDic:userInfo]);
    NSString *message = [[userInfo objectForKey:@"aps"]objectForKey:@"alert"];
    [Common showMsgBox:@"提示" msg:message parentCtrl:self.window.rootViewController];
    [[NSUserDefaults standardUserDefaults] setObject:message forKey:@"MsgList"];
}

//注册APNs失败返回
- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    //Optional
    NSLog(@"APNs注册失败 返回info: %@", error);
}
- (NSString *)logDic:(NSDictionary *)dic {
    if (![dic count]) {
        return nil;
    }
    NSString *tempStr1 =
    [[dic description] stringByReplacingOccurrencesOfString:@"\\u"
                                                 withString:@"\\U"];
    NSString *tempStr2 =
    [tempStr1 stringByReplacingOccurrencesOfString:@"\"" withString:@"\\\""];
    NSString *tempStr3 =
    [[@"\"" stringByAppendingString:tempStr2] stringByAppendingString:@"\""];
    NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];
    NSString *str =
    [NSPropertyListSerialization propertyListFromData:tempData
                                     mutabilityOption:NSPropertyListImmutable
                                               format:NULL
                                     errorDescription:NULL];
    return str;
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
    //取消badeg数字
    [application setApplicationIconBadgeNumber: 1];
    [application setApplicationIconBadgeNumber:0];
    [application cancelAllLocalNotifications];
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}



- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
