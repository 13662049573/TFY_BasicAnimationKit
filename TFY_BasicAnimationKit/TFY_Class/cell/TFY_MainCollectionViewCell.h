//
//  TFY_MainCollectionViewCell.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import <UIKit/UIKit.h>
#import "TFY_MainModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TFY_MainCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) TFY_MainModel * model;

+ (CGSize)itemSize;


@end

NS_ASSUME_NONNULL_END
