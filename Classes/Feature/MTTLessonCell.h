//
//  MTTLessonCell.h
//  N2R
//
//  Created by 六号 on 2019/4/9.
//  Copyright © 2019 lyle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTTLessonModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTTLessonCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lessonNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lessonCategoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@property (weak, nonatomic) IBOutlet UIView *bgView;


@property (nonatomic,strong)MTTLessonModel * model;
@end

NS_ASSUME_NONNULL_END
