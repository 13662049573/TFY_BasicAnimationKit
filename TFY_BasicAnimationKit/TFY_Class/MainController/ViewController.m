//
//  ViewController.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/10.
//

#import "ViewController.h"
#import "TFY_MainModel.h"
#import "TFY_MainCollectionViewCell.h"

#import "TFY_DancerTransitionViewController.h"
#import "TFY_DancerCollectionViewController.h"
#import "TFY_DancerTableViewController.h"
#import "TFY_DancerViewController.h"

NSArray <NSDictionary *>* mainDataSource()
{
    return @[
             @{
                 @"title": @"Make",
                 @"detail": @"功能制造，以中心为基础",
                 @"bgImage": @"main_bg_make.jpg"
                 },
             @{
                 @"title": @"Take",
                 @"detail": @"函数TAKE，基于边界(参数repeat不可用)",
                 @"bgImage": @"main_bg_take.jpg"
                 },
             @{
                 @"title": @"Move",
                 @"detail": @"函数移动、相对移动(以中心为基础)",
                 @"bgImage": @"main_bg_move.jpg"
                 },
             @{
                 @"title": @"Add",
                 @"detail": @"函数添加，相对移动(基于边界)。(参数重复不可用)",
                 @"bgImage": @"main_bg_add.jpg"
                 },
             @{
                 @"title": @"Path",
                 @"detail": @"路径动画",
                 @"bgImage": @"main_bg_path.jpg"
                 },
             @{
                 @"title": @"Transition",
                 @"detail": @"过渡动画",
                 @"bgImage": @"main_bg_tra.jpg"
                 },
             @{
                 @"title": @"CollectionView",
                 @"detail": @"CollectionView 动画",
                 @"bgImage": @"main_bg_make.jpg"
                 },
             @{
                 @"title": @"TableView",
                 @"detail": @"TableView 动画",
                 @"bgImage": @"main_bg_take.jpg"
                 }
             ];
}


@interface ViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) NSArray <TFY_MainModel *>* dataSource;
@property (nonatomic, strong) UIImageView * bgImageView;
@property (nonatomic, strong) UICollectionView * collectionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self.view addSubview:self.bgImageView];
    [self.view addSubview:self.collectionView];
    
    [self.bgImageView tfy_AutoSize:0 top:0 right:0 bottom:0];
    [self.collectionView tfy_AutoSize:0 top:0 right:0 bottom:0];
    
}

#pragma mark -UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    TFY_MainCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([TFY_MainCollectionViewCell class]) forIndexPath:indexPath];
    cell.model = self.dataSource[indexPath.row];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * title = self.dataSource[indexPath.row].title;
    if ([title isEqualToString:@"Transition"])
    {
        TFY_DancerTransitionViewController * transitionVC = [[TFY_DancerTransitionViewController alloc] init];
        [self.navigationController pushViewController:transitionVC animated:YES];
    }
    else if ([title isEqualToString:@"CollectionView"])
    {
        TFY_DancerCollectionViewController * collectionVC = [[TFY_DancerCollectionViewController alloc] init];
        [self.navigationController pushViewController:collectionVC animated:YES];
    }
    else if ([title isEqualToString:@"TableView"])
    {
        TFY_DancerTableViewController * tableVC = [[TFY_DancerTableViewController alloc] init];
        [self.navigationController pushViewController:tableVC animated:YES];
    }
    else
    {
        TFY_DancerViewController * dancerVC = [[TFY_DancerViewController alloc] initWithTitle:title];
        [self.navigationController pushViewController:dancerVC animated:YES];
    }
    
}


- (NSArray<TFY_MainModel *> *)dataSource
{
    if (!_dataSource)
    {
        _dataSource = [TFY_MainModel tfy_ModelWithJson:mainDataSource()];
    }
    return _dataSource;
}

- (UIImageView *)bgImageView
{
    if (!_bgImageView)
    {
        _bgImageView = UIImageViewSet();
        _bgImageView.makeChain
        .image([UIImage imageNamed:@"item_bg"])
        .contentMode(UIViewContentModeScaleAspectFill);
    }
    return _bgImageView;
}

- (UICollectionView *)collectionView
{
    if (!_collectionView)
    {
        UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc] init];
        layout.minimumLineSpacing = 15;
        layout.minimumInteritemSpacing = 15;
        layout.itemSize = [TFY_MainCollectionViewCell itemSize];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.backgroundView = nil;
        _collectionView.backgroundColor = nil;
        _collectionView.contentInset = UIEdgeInsetsMake(20, 20, 30, 20);
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView registerClass:[TFY_MainCollectionViewCell class] forCellWithReuseIdentifier:NSStringFromClass([TFY_MainCollectionViewCell class])];
    }
    return _collectionView;
}


@end
