//
//  UIWindow+MTTCategory.m
//  Moodv2
//
//  Created by 刘浩 on 2017/8/2.
//  Copyright © 2017年 刘浩. All rights reserved.
//

#import "UIWindow+MTTCategory.h"
//#import "VKMPLoginViewController.h"
#import "VKMPTabbarViewController.h"

@implementation UIWindow (MTTCategory)

+ (UIWindow *)mtt_configKeyWindowWithViewController:(UIViewController*)vc {
    UIWindow * keyWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    keyWindow.backgroundColor = [UIColor whiteColor];
    keyWindow.rootViewController = vc;
    [keyWindow makeKeyAndVisible];
    return keyWindow;
}

+ (UIWindow *)mtt_loginPage:(VoidBlock)block {
    
    
    UIWindow * keyWindow  = [[[UIApplication sharedApplication] delegate] window];
    keyWindow.backgroundColor = [UIColor whiteColor];
//    VKMPLoginViewController* loginVc = [[VKMPLoginViewController alloc]init];
//    loginVc.loginAction = block;
//    keyWindow.rootViewController = loginVc;
//
//
//    [UIView transitionWithView:keyWindow
//                      duration:0.5
//                       options:UIViewAnimationOptionTransitionCrossDissolve
//                    animations:^{
//                        keyWindow.rootViewController = loginVc;
//                    }
//                    completion:nil];
//    [keyWindow  makeKeyAndVisible];
    return keyWindow;
}

+ (UIWindow *)mtt_defultKeyWindow {
    UIWindow * keyWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    keyWindow.backgroundColor = [UIColor whiteColor];
    VKMPTabbarViewController * tabbar = [[VKMPTabbarViewController alloc] init];
    
    [UIView transitionWithView:keyWindow
                      duration:0.5
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        keyWindow.rootViewController = tabbar;
                    }
                    completion:nil];
    [keyWindow  makeKeyAndVisible];
    return keyWindow;
}

@end
