//
//  UITableView+TFY_Dancer.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import <UIKit/UIKit.h>
#import "TFY_DancerBlock.h"

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (TFY_Dancer)

// MARK: type
@property (nonatomic, copy, readonly) TFY_DancerTableViewFloat makeScale;
@property (nonatomic, copy, readonly) TFY_DancerTableViewFloat makeScaleX;
@property (nonatomic, copy, readonly) TFY_DancerTableViewFloat makeScaleY;
@property (nonatomic, copy, readonly) TFY_DancerTableViewFloat makeRotation;


@property (nonatomic, copy, readonly) TFY_DancerTableViewFloat moveX;
@property (nonatomic, copy, readonly) TFY_DancerTableViewFloat moveY;
@property (nonatomic, copy, readonly) TFY_DancerTableViewPoint moveXY;


// MARK: TRANSITION 转场动画
// 单独transitionFlipFromLeft等,表示当前视图的变化;再调用transitionTo则表示是从当前转换到另一个.
@property (nonatomic, copy, readonly) TFY_DancerTableViewTo transitionTo;


// MARK: 单个cell动画时间
@property (nonatomic, copy, readonly) TFY_DancerTableViewTimeInterval itemDuration;
// cell间隔时间, 默认0.1
@property (nonatomic, copy, readonly) TFY_DancerTableViewTimeInterval itemDelay;



// MARK: 头脚是否跟随动画,默认不
@property (nonatomic, copy, readonly) TFY_DancerTableViewBool headerDancer;
@property (nonatomic, copy, readonly) TFY_DancerTableViewBool footerDancer;


// MAKR: 不适用系统的reloadData刷新数据,使用如下
// 刷新可视cells
@property (nonatomic, copy, readonly) TFY_DancerTableViewVoid reloadDataWithDancer;
// 刷新固定cell
@property (nonatomic, copy, readonly) TFY_DancerTableViewFixed reloadDataFixedWithDancer;


// MARK: 结束后的回调
@property (nonatomic, copy) TFY_DancerVoidCompletion completion;

// MARK: 动画样式, TRANSITION时无效
- (UITableView *)easeLiner;
- (UITableView *)easeInOut;
- (UITableView *)easeIn;
- (UITableView *)easeOut;


// MARK: 转场动画样式 (只适用于TRANSITION, spring无效)
- (UITableView *)transitionFlipFromLeft;
- (UITableView *)transitionFromRight;
- (UITableView *)transitionCurlUp;
- (UITableView *)transitionCurlDown;
- (UITableView *)transitionCrossDissolve;
- (UITableView *)transitionFlipFromTop;
- (UITableView *)transitionFlipFromBottom;

// MARK: 是否弹性动画
- (UITableView *)spring;


@end

NS_ASSUME_NONNULL_END
