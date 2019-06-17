//
//  MTCardCell.m
//  N2R
//
//  Created by 六号 on 2019/4/19.
//  Copyright © 2019 lyle. All rights reserved.
//

#import "MTCardCell.h"

@implementation MTCardCell

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)setCellData:(MTTCard *)cellData{
    self.contentlabel.text = cellData.title;
    self.backgroundColor = [UIColor mtt_colorFromHexString:cellData.bgColor];
    self.contentlabel.textColor  =[UIColor mtt_colorFromHexString:cellData.txtColor];
}

@end
