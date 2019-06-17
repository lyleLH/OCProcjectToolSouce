//
//  MTTLessonCell.m
//  N2R
//
//  Created by 六号 on 2019/4/9.
//  Copyright © 2019 lyle. All rights reserved.
//

#import "MTTLessonCell.h"

@implementation MTTLessonCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.backgroundColor = [UIColor clearColor];
    self.bgView.layer.cornerRadius = 7.5;
    self.bgView.layer.masksToBounds = YES;
    self.lessonCategoryLabel.textColor =kGlobalBlueColor;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(MTTLessonModel *)model {
    self.progressLabel.text = [NSString stringWithFormat:@"上次:%.2f/100",model.progress];
    self.lessonNameLabel.text = model.lessonName;
    self.lessonCategoryLabel.text = model.categoryName;
}


@end
