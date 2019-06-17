//
//  MTCardCell.h
//  N2R
//
//  Created by 六号 on 2019/4/19.
//  Copyright © 2019 lyle. All rights reserved.
//

#import "QiCardViewCell.h"
#import "MTTCard.h"
NS_ASSUME_NONNULL_BEGIN

@interface MTCardCell : QiCardViewCell
    @property (nonatomic, strong) MTTCard *cellData;//!< 模型数据
    @property (weak, nonatomic) IBOutlet UILabel *contentlabel;
    @property (weak, nonatomic) IBOutlet UIButton *checkButton;
    
@end

NS_ASSUME_NONNULL_END
