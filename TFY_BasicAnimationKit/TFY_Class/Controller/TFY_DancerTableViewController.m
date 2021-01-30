//
//  TFY_DancerTableViewController.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "TFY_DancerTableViewController.h"

@interface TFY_DancerTableViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView * tableView;
@end

@implementation TFY_DancerTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
 
    [self.view addSubview:self.tableView];
    [self.tableView tfy_AutoSize:0 top:0 right:0 bottom:0];
    
    self.tableView
    .makeScale(0.01)
    .itemDuration(0.7)
    .itemDelay(0.1)
    .spring
    .reloadDataWithDancer();
}

#pragma mark -UITableViewDelegate, UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(UITableViewCell.class) forIndexPath:indexPath];
    cell.backgroundColor = UIColor.yellowColor;
    return cell;
}

- (UITableView *)tableView
{
    if (!_tableView)
    {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.backgroundColor = nil;
        _tableView.backgroundView = nil;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.showsHorizontalScrollIndicator = NO;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.rowHeight = 200;
        [_tableView registerClass:UITableViewCell.class forCellReuseIdentifier:NSStringFromClass(UITableViewCell.class)];
    }
    return _tableView;
}

@end
