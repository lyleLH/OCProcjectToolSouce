//
//  MTTLessonsViewController.m
//  N2R
//
//  Created by 六号 on 2019/4/18.
//  Copyright © 2019 lyle. All rights reserved.
//

#import "MTTLessonsViewController.h"
#import "MTTAddLessonViewController.h"
#import "MTTLessonCell.h"
#import "MTTLessonModel.h"
@interface MTTLessonsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong)NSMutableArray  *dataSource;

@end

@implementation MTTLessonsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"学习主题";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"新增主题" style:UIBarButtonItemStylePlain target:self action:@selector(newClass)];
    self.navigationItem.leftBarButtonItem.tintColor = kGlobalBlueColor;
    
}
    
- (void)newClass {
    MTTAddLessonViewController * addLessonVc = [[MTTAddLessonViewController alloc] init];
    [self.navigationController pushViewController:addLessonVc animated:YES];
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 80;
}
    
    
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;;
}
    
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MTTLessonCell* cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:@"MTTLessonCell"];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"MTTLessonCell" owner:nil options:nil].firstObject;
        
    }
    cell.model = self.dataSource[indexPath.row];
    return cell;
    
}
    
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}
    
-(void)setTableView:(UITableView *)tableView {
    [tableView mtt_configTableViewDefaultHeaderFooter];
    //    [tableView mtt_configCellSeprator];
    
    [tableView registerNib:[UINib nibWithNibName:@"MTTLessonCell" bundle:nil] forCellReuseIdentifier:@"MTTLessonCell.h"];
    
    _tableView = tableView;
}
    
- (NSMutableArray *)dataSource {
    if(!_dataSource){
        _dataSource = [NSMutableArray new];
        _dataSource = [NSMutableArray arrayWithArray: [MTTLessonModel randomData]];
    }
    return _dataSource;
}
@end
