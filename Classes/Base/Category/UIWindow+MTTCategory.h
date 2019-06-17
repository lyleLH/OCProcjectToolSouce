//
//  UIWindow+MTTCategory.h
//  Moodv2
//
//  Created by 刘浩 on 2017/8/2.
//  Copyright © 2017年 刘浩. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface UIWindow (MTTCategory)
//+ (UIWindow *)mtt_loginPage:(VoidBlock)block;
+ (UIWindow *)mtt_defultKeyWindow;

+ (UIWindow *)mtt_configKeyWindowWithViewController:(UIViewController*)vc ;


@end
