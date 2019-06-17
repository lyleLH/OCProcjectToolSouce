//
//  UITableView+KPConfig.m
//  kuparts3
//
//  Created by lyleKP on 2017/3/31.
//  Copyright © 2017年 Kuparts. All rights reserved.
//

#import "UITableView+MTTConfig.h"

@implementation UITableView (MTTConfig)
- (void)mtt_configCellSeprator {
    [self mtt_configTableViewDefaultHeaderFooter];
    //  self.m_tableView.separatorInset = UIEdgeInsetsMake(0.5, 80, 0.5, 0);
    if ([self respondsToSelector:@selector(setSeparatorInset:)]) {
        [self setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([self respondsToSelector:@selector(setLayoutMargins:)]) {
        [self setLayoutMargins:UIEdgeInsetsZero];
    }
    self.separatorColor = [UIColor mtt_colorWithHex:0xe6e6e6];
}


- (void)mtt_configTableViewDefaultHeaderFooter {
    CGRect frame = CGRectMake(0, 0, 0, CGFLOAT_MIN);
    self.tableHeaderView = [[UIView alloc] initWithFrame:frame];
    self.tableFooterView = [[UIView alloc] initWithFrame:frame];
    self.showsVerticalScrollIndicator = NO;
}
@end
