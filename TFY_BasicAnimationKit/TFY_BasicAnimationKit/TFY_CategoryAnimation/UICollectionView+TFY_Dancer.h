//
//  UICollectionView+TFY_Dancer.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import <UIKit/UIKit.h>
#import "TFY_DancerBlock.h"

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (TFY_Dancer)

// MARK: type
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewFloat makeScale;
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewFloat makeScaleX;
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewFloat makeScaleY;
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewFloat makeRotation;


@property (nonatomic, copy, readonly) TFY_DancerCollectionViewFloat moveX;
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewFloat moveY;
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewPoint moveXY;




// MARK: TRANSITION 转场动画
// Transition animation
// 单独transitionFlipFromLeft等,表示当前视图的变化;再调用transitionTo则表示是从当前转换到另一个.
//Individual transitionFlipFromLeft, etc., indicates the change of the current view; then calling transitionTo means that it is converted from the current to another
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewTo transitionTo;


// MARK: 单个cell动画时间
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewTimeInterval itemDuration;
// cell间隔时间, 默认0.1
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewTimeInterval itemDelay;



// MARK: 头脚是否跟随动画,默认不
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewBool headerDancer;
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewBool footerDancer;






// MAKR: 不适用系统的reloadData刷新数据,使用如下
// 刷新可视cells
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewVoid reloadDataWithDancer;
// 刷新固定cell
@property (nonatomic, copy, readonly) TFY_DancerCollectionViewFixed reloadDataFixedWithDancer;




// MARK: 结束后的回调
@property (nonatomic, copy) TFY_DancerVoidCompletion completion;



// MARK: 动画样式, TRANSITION时无效
// animated style, Transition is unavailable
- (UICollectionView *)easeLiner;
- (UICollectionView *)easeInOut;
- (UICollectionView *)easeIn;
- (UICollectionView *)easeOut;



// MARK: 转场动画样式 (只适用于TRANSITION, spring无效)
// Transition animation style (only for TRANSITION, spring is unavailable)
- (UICollectionView *)transitionFlipFromLeft;
- (UICollectionView *)transitionFromRight;
- (UICollectionView *)transitionCurlUp;
- (UICollectionView *)transitionCurlDown;
- (UICollectionView *)transitionCrossDissolve;
- (UICollectionView *)transitionFlipFromTop;
- (UICollectionView *)transitionFlipFromBottom;



// MARK: 是否弹性动画
- (UICollectionView *)spring;


@end

NS_ASSUME_NONNULL_END
