//
//  MTTLessonModel.h
//  N2R
//
//  Created by 六号 on 2019/4/9.
//  Copyright © 2019 lyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
#import "MTTCard.h"

NS_ASSUME_NONNULL_BEGIN

RLM_ARRAY_TYPE(MTTCard)


@interface MTTLessonModel : RLMObject
@property (nonatomic,strong)NSString * lessonID;
@property (nonatomic,strong)NSString * lessonName;
@property (nonatomic,strong)NSString * categoryName;
@property (nonatomic,assign)CGFloat progress;
@property (nonatomic,strong)RLMArray <MTTCard>*cards;
+ (NSArray *)randomData ;

@end

NS_ASSUME_NONNULL_END
