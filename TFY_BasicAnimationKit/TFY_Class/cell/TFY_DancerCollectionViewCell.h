//
//  TFY_DancerCollectionViewCell.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TFY_DancerCollectionViewCell : UICollectionViewCell

@property (nonatomic, assign) TFY_Dancer dancer;

+ (CGSize)itemSize;

+ (CGSize)itemSizePlus;

@end

NS_ASSUME_NONNULL_END
