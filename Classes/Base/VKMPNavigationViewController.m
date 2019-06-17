//
//  VKMPNavigationViewController.m
//  VKProject
//
//  Created by 刘浩 on 2019/3/5.
//  Copyright © 2019 Vanke. All rights reserved.
//

#import "VKMPNavigationViewController.h"

@interface VKMPNavigationViewController ()<UINavigationControllerDelegate>


@end

@implementation VKMPNavigationViewController

- (instancetype)init{
    self = [super init];
    if(self){
        
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (void)initialize {
    UINavigationBar * naviBar = [UINavigationBar appearance] ;
    [naviBar setTintColor:[UIColor whiteColor]];
    [naviBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor mtt_colorWithHex:0x333333]}];
    [naviBar setBackgroundImage:[UIImage imageNamed:@"default_top_bar"] forBarMetrics:UIBarMetricsDefault];
    
}



- (instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    if (self = [super initWithRootViewController:rootViewController]) {
        self.delegate = self;
    }
    
    return self;
}

/**
 *  重写导航栏控制push方法,重写此方法对控制器没有“侵入性”
 *
 *  @param viewController 拦截调用此方法的控制器，并对其进行设置
 */


-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if(self.viewControllers.count > 0) {//所有根控制器的下一级控制器的导航栏左右两侧按钮样式一致
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem mtt_itemWithTarget:self action:@selector(back) image:@"navigationBar_back_theme" selectedImage:@"navigationBar_back_theme"];
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}


- (void)back {
    //    ALogDebug(@"navigationController");
    [self popViewControllerAnimated:YES];
}

@end
