//
//  MTTCard.h
//  N2R
//
//  Created by 六号 on 2019/4/18.
//  Copyright © 2019 lyle. All rights reserved.
//

#import "RLMObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTTCard : RLMObject

    @property (nonatomic,strong)NSString * title;
    @property (nonatomic,strong)NSString * content;
    @property (nonatomic,strong)NSString * bgColor;
    @property (nonatomic,strong)NSString * txtColor;
    
+ (NSArray<MTTCard*> *)randomData ;
    
@end

NS_ASSUME_NONNULL_END
