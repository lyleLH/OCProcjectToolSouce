//
//  UIBarButtonItem+MTTCategory.m
//  Moodv2
//
//  Created by 刘浩 on 2017/8/4.
//  Copyright © 2017年 刘浩. All rights reserved.
//

#import "UIBarButtonItem+MTTCategory.h"
#import <YYKit/YYKit.h>
@implementation UIBarButtonItem (MTTCategory)

/**
 *  返回一个设置好了图片和事件对象的UIBarButtonItem
 *
 *  @param target        事件拥有者
 *  @param action        事件名
 *  @param image         正常状态的图片
 *  @param selectedImage 选中状态的图片
 *
 *  @return  返回一个设置好了图片和事件对象的UIBarButtonItem
 */
+ (UIBarButtonItem *)mtt_itemWithTarget:(id)target
                             action:(SEL)action
                              image:(NSString *)image
                      selectedImage:(NSString *)selectedImage {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image]
                      forState:UIControlStateNormal];
    if (selectedImage) {
        [button setBackgroundImage:[UIImage imageNamed:selectedImage]
                          forState:UIControlStateHighlighted];
    }
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target
               action:action
     forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}





@end
