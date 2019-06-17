//
//  MTTCardCategoryViewController.m
//  N2R
//
//  Created by 六号 on 2019/4/9.
//  Copyright © 2019 lyle. All rights reserved.
//

#import "MTTCardCategoryViewController.h"
#import "MTTCategoryModel.h"
@interface MTTCardCategoryViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong)NSMutableArray  *dataSource;

@end

@implementation MTTCardCategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"所有类目";
}

#pragma mark -- UITableViewDelegate,UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"categoryCell"];
    MTTCategoryModel * category = [self.dataSource objectAtIndex:indexPath.row];
    cell.textLabel.text = category.name;
    cell.textLabel.textColor = [UIColor mtt_colorWithHex:0x333333];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
 
}



-(void)setTableView:(UITableView *)tableView {
    [tableView mtt_configTableViewDefaultHeaderFooter];
    [tableView mtt_configCellSeprator];
    _tableView = tableView;
}

- (NSMutableArray *)dataSource {
    if(!_dataSource){
        _dataSource = [NSMutableArray new];
        _dataSource  = [NSMutableArray arrayWithArray:[MTTCategoryModel mockData]];
    }
    return _dataSource;
}

@end
