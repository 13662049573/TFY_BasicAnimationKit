//
//  TFY_DancerCollectionViewController.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "TFY_DancerCollectionViewController.h"

@interface TFY_DancerCollectionViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (nonatomic, strong) UICollectionView * collectionView;
@end

@implementation TFY_DancerCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
   
    [self.view addSubview:self.collectionView];
    [self.collectionView tfy_AutoSize:0 top:0 right:0 bottom:0];
    
    self.collectionView
    .makeScale(0.01)
    .itemDuration(0.7)
    .itemDelay(0.1)
    .spring
    .reloadDataWithDancer();
}

#pragma mark -UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass(UICollectionViewCell.class) forIndexPath:indexPath];
    cell.backgroundColor = UIColor.blueColor;
    return cell;
}


- (UICollectionView *)collectionView
{
    if (!_collectionView)
    {
        UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc] init];
        layout.minimumLineSpacing = 15;
        layout.minimumInteritemSpacing = 15;
        layout.itemSize  = CGSizeMake(UIScreen.mainScreen.bounds.size.width - 20 * 2, 250);
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.backgroundView = nil;
        _collectionView.backgroundColor = nil;
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.contentInset = UIEdgeInsetsMake(20, 20, 30, 20);
        [_collectionView registerClass:UICollectionViewCell.class forCellWithReuseIdentifier:NSStringFromClass(UICollectionViewCell.class)];
    }
    return _collectionView;
}

@end
