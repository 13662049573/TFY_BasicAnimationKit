//
//  TFY_DancerViewController.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "TFY_DancerViewController.h"
#import "TFY_DancerCollectionViewCell.h"

NSArray <NSNumber *>* makeDataSource()
{
    return @[
             @(TFY_DancerMakeSize),
             @(TFY_DancerMakePosition),
             @(TFY_DancerMakeX),
             @(TFY_DancerMakeY),
             @(TFY_DancerMakeWidth),
             @(TFY_DancerMakeHeight),
             @(TFY_DancerMakeScale),
             @(TFY_DancerMakeScaleX),
             @(TFY_DancerMakeScaleY),
             @(TFY_DancerMakeRotationX),
             @(TFY_DancerMakeRotationY),
             @(TFY_DancerMakeRotationZ),
             @(TFY_DancerMakeBackground),
             @(TFY_DancerMakeOpacity),
             @(TFY_DancerMakeCornerRadius),
             @(TFY_DancerMakeBorderWidth)
             ];
}

NSArray <NSNumber *>* TakeDataSource()
{
    return @[
             @(TFY_DancerTakeFrame),
             @(TFY_DancerTakeLeading),
             @(TFY_DancerTakeTraing),
             @(TFY_DancerTakeTop),
             @(TFY_DancerTakeBottom),
             @(TFY_DancerTakeWidth),
             @(TFY_DancerTakeHeight),
             @(TFY_DancerTakeSize)
             ];
}

NSArray <NSNumber *>* MoveDataSource()
{
    return @[
             @(TFY_DancerMoveX),
             @(TFY_DancerMoveY),
             @(TFY_DancerMoveXY),
             @(TFY_DancerMoveWidth),
             @(TFY_DancerMoveHeight),
             @(TFY_DancerMoveSize)
             ];
}

NSArray <NSNumber *>* AddDataSource()
{
    return @[
             @(TFY_DancerAddLeading),
             @(TFY_DancerAddTraing),
             @(TFY_DancerAddTop),
             @(TFY_DancerAddBottom),
             @(TFY_DancerAddWidth),
             @(TFY_DancerAddHeight),
             @(TFY_DancerAddSize)
             ];
}

NSArray <NSNumber *>* PathDataSource()
{
    return @[@(TFY_DancerPath)];
}



@interface TFY_DancerViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) UIImageView * bgImageView;
@property (nonatomic, copy) NSString * mtitle;
@property (nonatomic, strong) NSArray <NSNumber *> * dataSource;
@property (nonatomic, strong) UICollectionView * collectionView;
@end

@implementation TFY_DancerViewController

- (instancetype)initWithTitle:(NSString *)title
{
    if (self = [super init])
    {
        _mtitle = title;
        
        if ([title isEqualToString:@"Make"])
        {
            self.dataSource = makeDataSource();
        }
        else if ([title isEqualToString:@"Take"])
        {
            self.dataSource = TakeDataSource();
        }
        else if ([title isEqualToString:@"Move"])
        {
            self.dataSource = MoveDataSource();
        }
        else if ([title isEqualToString:@"Add"])
        {
            self.dataSource = AddDataSource();
        }
        else if ([title isEqualToString:@"Path"])
        {
            self.dataSource = PathDataSource();
        }
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.whiteColor;
    self.navigationItem.title = _mtitle;
    
    [self.view addSubview:self.bgImageView];
    [self.view addSubview:self.collectionView];
    
    [self.bgImageView tfy_AutoSize:0 top:0 right:0 bottom:0];
    [self.collectionView tfy_AutoSize:0 top:0 right:0 bottom:0];
    
}

#pragma mark -UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return self.dataSource.count == 1 ? [TFY_DancerCollectionViewCell itemSizePlus] : [TFY_DancerCollectionViewCell itemSize];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    TFY_DancerCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([TFY_DancerCollectionViewCell class]) forIndexPath:indexPath];
    cell.dancer = self.dataSource[indexPath.row].integerValue;
    return cell;
}

- (UIImageView *)bgImageView
{
    if (!_bgImageView)
    {
        _bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"item_bg"]];
        _bgImageView.contentMode = UIViewContentModeScaleAspectFill;
        _bgImageView.layer.masksToBounds = YES;
    }
    return _bgImageView;
}

- (UICollectionView *)collectionView
{
    if (!_collectionView)
    {
        UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc] init];
        layout.minimumLineSpacing = 10;
        layout.minimumInteritemSpacing = 10;
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.backgroundView = nil;
        _collectionView.backgroundColor = nil;
        _collectionView.contentInset = UIEdgeInsetsMake(20, 20, 30, 20);
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView registerClass:[TFY_DancerCollectionViewCell class] forCellWithReuseIdentifier:NSStringFromClass([TFY_DancerCollectionViewCell class])];
    }
    return _collectionView;
}


@end
