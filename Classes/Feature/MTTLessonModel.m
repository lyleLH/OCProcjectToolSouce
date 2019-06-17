//
//  MTTLessonModel.m
//  N2R
//
//  Created by 六号 on 2019/4/9.
//  Copyright © 2019 lyle. All rights reserved.
//

#import "MTTLessonModel.h"

@implementation MTTLessonModel
+ (NSString *)primaryKey {
    return @"lessonID";
}


+ (NSArray *)randomData  {
    NSInteger i = 5;
    NSArray * nameAry = @[@"产品经理入门知识" ,@"产品经理进阶知识",@"用户体验基础",@"考研英语词汇" ,@"运营常用名词解释"];
    NSMutableArray * ary = [NSMutableArray arrayWithCapacity:i];
    for (int j =0; j<i; j ++) {
        MTTLessonModel * model = [[MTTLessonModel alloc] init];
        model.lessonName = nameAry[j];
        model.categoryName = @"互联网从业基础知识";
        model.progress =   arc4random() % 100;
        [ary addObject:model];
    }
    
    return ary;
}


@end
