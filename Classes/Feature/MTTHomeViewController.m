//
//  MTTHomeViewController.m
//  N2R
//
//  Created by 六号 on 2019/4/9.
//  Copyright © 2019 lyle. All rights reserved.
//

#import "MTTHomeViewController.h"

#import "MTTNewCardViewController.h"
#import "MTCardCell.h"
#import "MTTCard.h"
#import "QiCardView.h"

static NSString * const qiCardCellId = @"QiCardCellId";

@interface MTTHomeViewController ()<QiCardViewDataSource, QiCardViewDelegate>
    @property (weak, nonatomic) IBOutlet UIView *newlyBgView;
    @property (nonatomic, copy) NSArray<MTTCard *> *cellItems;//!< 数据模型数据
    @property (nonatomic, strong) QiCardView *cardView;//!< 主角：QiCardView
@end

@implementation MTTHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"最近学习的内容";
    self.view.backgroundColor = [UIColor mtt_colorWithHex:0xeeeeee];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"新增卡片" style:UIBarButtonItemStylePlain target:self action:@selector(newCard)];
    self.navigationItem.leftBarButtonItem.tintColor = kGlobalBlueColor;
    [self initCellDatas];
    [self initViews];
}
    
- (void)newlyLearningSubject {
    
}
    
    
- (void)newCard {
    MTTNewCardViewController * addCardVc = [[MTTNewCardViewController alloc] init];
    [self.navigationController pushViewController:addCardVc animated:YES];
    
}



    //! 初始化Views
- (void)initViews {
    
    _cardView = [[QiCardView alloc] initWithFrame:CGRectMake(50, 120 + 40 + 64+30, kScreenWidth - 100, 320)];
//    _cardView.backgroundColor = [UIColor lightGrayColor];//!< 为了指出carddView的区域，指明背景色
    _cardView.dataSource = self;
    _cardView.delegate = self;
    _cardView.visibleCount = 4;
    _cardView.lineSpacing = 15.0;
    _cardView.interitemSpacing = 10.0;
    _cardView.maxAngle = 10.0;
    _cardView.isAlpha = YES;
    _cardView.maxRemoveDistance = 100.0;
    _cardView.layer.cornerRadius = 10.0;
//    [_cardView registerClass:[MTCardCell class] forCellReuseIdentifier:qiCardCellId];
    
    [_cardView registerNib:[UINib nibWithNibName:NSStringFromClass([MTCardCell class]) bundle:[NSBundle mainBundle]] forCellReuseIdentifier:qiCardCellId];
    [self.view addSubview:_cardView];
}
    
    
#pragma mark - QiCardViewDataSource
    
- (MTCardCell *)cardView:(QiCardView *)cardView cellForRowAtIndex:(NSInteger)index {
    
    MTCardCell *cell = [cardView dequeueReusableCellWithIdentifier:qiCardCellId];
    cell.cellData = _cellItems[index];
    cell.layer.cornerRadius = 10.0;
    cell.layer.masksToBounds = YES;
//    cell.buttonClicked = ^(UIButton *sender) {
//        SFSafariViewController *safariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:self.cellItems[index].url]];
//        [self presentViewController:safariVC animated:YES completion:nil];
//    };
    return cell;
}
    
- (NSInteger)numberOfCountInCardView:(UITableView *)cardView {
    return _cellItems.count;
}
    
    
#pragma mark - QiCardViewDelegate
    
- (void)cardView:(QiCardView *)cardView didRemoveLastCell:(MTCardCell *)cell forRowAtIndex:(NSInteger)index {
    [cardView reloadDataAnimated:YES];
}
    
- (void)cardView:(QiCardView *)cardView didRemoveCell:(MTCardCell *)cell forRowAtIndex:(NSInteger)index {
    NSLog(@"didRemoveCell forRowAtIndex = %ld", index);
}
    
- (void)cardView:(QiCardView *)cardView didDisplayCell:(MTCardCell *)cell forRowAtIndex:(NSInteger)index {
    
    NSLog(@"didDisplayCell forRowAtIndex = %ld", index);
    
    NSLog(@"currentFirstIndex = %ld",cardView.currentFirstIndex);
    NSLog(@"%ld",index);
}
    
- (void)cardView:(QiCardView *)cardView didMoveCell:(MTCardCell *)cell forMovePoint:(CGPoint)point {
    //    NSLog(@"move point = %@", NSStringFromCGPoint(point));
}

    
    
    
    //! 初始化模型数据
- (void)initCellDatas {
    
    _cellItems =  [MTTCard randomData];
}

@end
