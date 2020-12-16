//
//  UIView+TFY_DancerProperty.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import <UIKit/UIKit.h>
#import "TFY_DancerBlock.h"

typedef NS_ENUM(NSInteger, TFY_ViewEaseType) {
    TFY_ViewEaseTypeInOut = 0,
    TFY_ViewEaseTypeIn,
    TFY_ViewEaseTypeOut,
    TFY_ViewEaseTypeLiner
};


NS_ASSUME_NONNULL_BEGIN

@interface UIView (TFY_DancerProperty)
/**
 MARK: 延时
 */
@property (nonatomic, assign, readwrite) NSTimeInterval tfy_view_delay;
/**
 MARK: 重复次数
 */
@property (nonatomic, assign, readwrite) NSInteger tfy_view_repeat;

/**
 MARK: 是否恢复
 */
@property (nonatomic, assign, readwrite) BOOL tfy_view_reverse;

/**
 MARK: 动画时间
 */
@property (nonatomic, assign, readwrite) NSTimeInterval tfy_view_animateDuration;

/**
 MARK: from
 */
@property (nonatomic, strong, readwrite) id tfy_view_from;

/**
 MARK: to
 */
@property (nonatomic, strong, readwrite) id tfy_view_to;

/**
 MARK: 类型
 */
@property (nonatomic, assign, readwrite) TFY_Dancer tfy_view_theDancer;

/**
 MARK: Ease类型
 */
@property (nonatomic, assign, readwrite) TFY_ViewEaseType tfy_view_easeType;

/**
 MARK: 是否spring
 */
@property (nonatomic, assign, readwrite) BOOL tfy_view_spring;

/**
 MARK: 是否transition
 */
@property (nonatomic, assign, readwrite) BOOL tfy_view_transition;

/**
 MARK: options
 */
@property (nonatomic, assign, readwrite) UIViewAnimationOptions tfy_view_options;

@end

NS_ASSUME_NONNULL_END
