//
//  AppDelegate.h
//  N2R
//
//  Created by 六号 on 2019/4/9.
//  Copyright © 2019 lyle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VKMPTabbarViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (weak, nonatomic, readonly) VKMPTabbarViewController * tabBarController;
@end

