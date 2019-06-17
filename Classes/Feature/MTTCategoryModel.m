//
//  MTTCategoryModel.m
//  N2R
//
//  Created by 六号 on 2019/4/9.
//  Copyright © 2019 lyle. All rights reserved.
//

#import "MTTCategoryModel.h"

@implementation MTTCategoryModel
+ (NSString *)primaryKey {
    return @"categoryID";
}


+ (NSArray *)mockData {
    MTTCategoryModel * model = [[MTTCategoryModel alloc] init];
    model.name = @"互联网从业基础知识";
    return @[model];
}

@end
