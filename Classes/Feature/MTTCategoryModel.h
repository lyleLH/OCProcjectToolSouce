//
//  MTTCategoryModel.h
//  N2R
//
//  Created by 六号 on 2019/4/9.
//  Copyright © 2019 lyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
NS_ASSUME_NONNULL_BEGIN

@interface MTTCategoryModel : RLMObject
@property (nonatomic,strong)NSString *categoryID;
@property (nonatomic,strong)NSString * name;
    

+ (NSArray *)mockData;
@end

NS_ASSUME_NONNULL_END
