//
//  UIBarButtonItem+MTTCategory.h
//  Moodv2
//
//  Created by 刘浩 on 2017/8/4.
//  Copyright © 2017年 刘浩. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (MTTCategory)

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
                          selectedImage:(NSString *)selectedImage;

@end
