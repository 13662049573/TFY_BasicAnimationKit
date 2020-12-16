//
//  CALayer+TFY_DancerProperty.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#import "TFY_DancerBlock.h"

// 动画类型
typedef NS_ENUM(NSInteger, TFY_DancerType) {
    TFY_DancerTypeBase = 0,
    TFY_DancerTypeSpring,
    TFY_DancerTypePath,
    TFY_DancerTypeTransition
};

NS_ASSUME_NONNULL_BEGIN

@interface CALayer (TFY_DancerProperty)

/**
 MARK: 动画类型
 */
@property (nonatomic, assign, readwrite) TFY_DancerType tfy_dancerType;

/**
 MARK: timing类型
 */
@property (nonatomic, copy, readwrite) CAMediaTimingFunctionName tfy_timing;

/**
 MARK: option类型
 */
@property (nonatomic, assign, readwrite) UIViewAnimationOptions tfy_options;

/**
 MARK: 延时
 */
@property (nonatomic, assign, readwrite) NSTimeInterval tfy_delay;

/**
 MARK: 重复次数
 */
@property (nonatomic, assign, readwrite) NSInteger tfy_repeat;

/**
 MARK: 是否回
 */
@property (nonatomic, assign, readwrite) BOOL tfy_reverse;

/**
 MARK: 是否是CA动画
 */
@property (nonatomic, assign, readwrite) BOOL tfy_isCAAnimation;

/**
 MARK: 动画时间
 */
@property (nonatomic, assign, readwrite) NSTimeInterval tfy_animateDuration;

/**
 MARK: CA keyPath
 */
@property (nonatomic, copy, readwrite) NSString * tfy_keyPath;

/**
 MARK: from
 */
@property (nonatomic, strong, readwrite) id tfy_from;

/**
 MARK: to
 */
@property (nonatomic, strong, readwrite) id tfy_to;


/**
 MARK: frame keyPath
 */
@property (nonatomic, copy, readwrite) NSString * tfy_frameKeyPath;

/**
 MARK: dancer类型
 */
@property (nonatomic, assign, readwrite) TFY_Dancer tfy_theDancer;

/**
 MARK: transition类型
 */
@property (nonatomic, copy, readwrite) TFY_DancerTransitionType tfy_transitionType;

/**
 MARK: 记录坐标
 */
@property (nonatomic, assign, readwrite) CGRect tfy_frameOrigin;

@end

NS_ASSUME_NONNULL_END
