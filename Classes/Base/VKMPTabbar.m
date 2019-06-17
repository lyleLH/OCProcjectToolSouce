//
//  VKMPTabbar.m
//  VKProject
//
//  Created by 刘浩 on 2019/3/5.
//  Copyright © 2019 Vanke. All rights reserved.
//

#import "VKMPTabbar.h"

@implementation VKMPTabbar

+ (void)initialize {
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor mtt_colorRGB:153.0/255.0 g: 153.0/255.0 b: 153.0/255.0]} forState:UIControlStateNormal];
    [[UITabBarItem appearance]  setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor mtt_colorRGB:84.0/255.0 g: 170.0/255.0 b: 257.0/255.0]} forState:UIControlStateSelected];
    [[UITabBar appearance] setTranslucent:NO];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
