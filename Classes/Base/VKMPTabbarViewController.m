//
//  VKMPTabbarViewController.m
//  VKProject
//
//  Created by 刘浩 on 2019/3/5.
//  Copyright © 2019 Vanke. All rights reserved.
//

#import "VKMPTabbarViewController.h"
#import "VKMPNavigationViewController.h"
#import "VKMPTabbar.h"

#import "VKMPNavigationViewController.h"

#import "MTTCardCategoryViewController.h"
#import "MTTHomeViewController.h"
#import "MTTLessonsViewController.h"
@interface VKMPTabbarViewController ()<UITabBarControllerDelegate>{
    NSInteger controllerIndex;
}

@end

@implementation VKMPTabbarViewController

- (void)setSelectedIndex:(NSUInteger)selectedIndex {
    [super setSelectedIndex:selectedIndex];
    if(selectedIndex==0){
//        VKMPNavigationViewController *nav = (VKMPNavigationViewController *)self.selectedViewController;
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.tabBar.hidden=YES;
    self.delegate = self;
    
    VKMPTabbar *tabBar = [[VKMPTabbar alloc] init];
    [self setValue:tabBar forKey:@"tabBar"];
    
    UIViewController * componentVc = [self viewController:[MTTHomeViewController class] title:@"卡片" imageName:@"tabbar_message" selectedImageName:@"tabbar_message_selected"];
    
    UIViewController * lessonVc = [self viewController:[MTTLessonsViewController class] title:@"课程" imageName:@"tabbar_contacts" selectedImageName:@"tabbar_contacts_selected"];
    
    UIViewController * appVc  = [self viewController:[MTTCardCategoryViewController class] title:@"分类" imageName:@"tabbar_work" selectedImageName:@"tabbar_work_selected"];
    self.viewControllers = @[componentVc,lessonVc,appVc];
    
}

- (UIViewController *)viewController:(Class)class title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName {
    UIViewController *viewController = [[class alloc] init];
    viewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:[UIImage imageNamed:imageName] selectedImage:[[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    VKMPNavigationViewController *navigationController = [[VKMPNavigationViewController alloc] initWithRootViewController:viewController];
    return navigationController;
}


@end
