//
//  AppDelegate.m
//  IMYADLaunchDemo
//
//  Created by ljh on 16/6/27.
//  Copyright © 2016年 ljh. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "XTGuidePagesViewController.h"

@interface AppDelegate () <UISplitViewControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UIViewController *mainVC = [[UIViewController alloc] init];
    UINavigationController *mainNavVC = [[UINavigationController alloc] initWithRootViewController:mainVC];
    [mainNavVC.navigationBar setHidden:YES];
    self.window.rootViewController = mainNavVC;
    [self.window makeKeyAndVisible];
//    return YES;
//}
//
    // 测试的时候改变info 里的版本号就可以了
    NSArray *images = @[@"1", @"2", @"3", @"4"];
    XTGuidePagesViewController *xt = [[XTGuidePagesViewController alloc] init];
    [mainNavVC addChildViewController:xt];
            //self.window.rootViewController = xt;
    xt.delegate = self;
    [xt guidePageControllerWithImages:images];
//    BOOL y = [XTGuidePagesViewController isShow];
//    if (y) {
//        XTGuidePagesViewController *xt = [[XTGuidePagesViewController alloc] init];
//        self.window.rootViewController = xt;
//        xt.delegate = self;
//        [xt guidePageControllerWithImages:images];
//    }else{
//        [self clickEnter];
//    }
    return YES;
}
- (void)clickEnter
{
    
    ViewController *vc = [[ViewController alloc] init];
    UINavigationController *mainNavVC = [[UINavigationController alloc] initWithRootViewController:vc];
    [mainNavVC.navigationBar setHidden:YES];
    self.window.rootViewController = mainNavVC;
    [self.window.layer transitionWithAnimType:TransitionAnimTypeRippleEffect subType:TransitionSubtypesFromTop curve:TransitionCurveDefault duration:1.0f];
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
