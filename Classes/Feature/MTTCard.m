//
//  MTTCard.m
//  N2R
//
//  Created by 六号 on 2019/4/18.
//  Copyright © 2019 lyle. All rights reserved.
//

#import "MTTCard.h"

@implementation MTTCard
    
- (instancetype)init {

    self = [super init];

    if(self){
        NSArray * colorStr = [UIColor randomPairColorForRead];
        self.bgColor = colorStr[0];
        self.txtColor = colorStr[1];

    }

    return self;
}
    
+ (NSArray *)randomData  {
    NSInteger i = 5;
    NSArray * nameAry = @[@"产品经理入门知识" ,@"产品经理进阶知识",@"用户体验基础",@"考研英语词汇" ,@"运营常用名词解释"];
    NSMutableArray * ary = [NSMutableArray arrayWithCapacity:i];
    for (int j =0; j<i; j ++) {
        MTTCard * model = [[MTTCard alloc] init];
        model.title = nameAry[j];
        model.content = @"QiCardView，一款由QiShare所开源的自定义卡片式控件。";
        
        [ary addObject:model];
    }
    
    return ary;
}


    
    
@end
