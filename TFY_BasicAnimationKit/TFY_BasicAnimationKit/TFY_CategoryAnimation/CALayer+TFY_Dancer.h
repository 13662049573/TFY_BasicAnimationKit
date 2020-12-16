//
//  CALayer+TFY_Dancer.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import <QuartzCore/QuartzCore.h>
#import "TFY_DancerBlock.h"

/** 转场动画方向 从右侧*/
UIKIT_EXTERN TFY_DancerTransitionDirection _Nonnull TFY_DancerTransitionDirectionFromRight;
/** 转场动画方向 从左侧*/
UIKIT_EXTERN TFY_DancerTransitionDirection _Nonnull TFY_DancerTransitionDirectionFromLeft;
/** 转场动画方向 从顶端*/
UIKIT_EXTERN TFY_DancerTransitionDirection _Nonnull TFY_DancerTransitionDirectionFromTop;
/** 转场动画方向 从底部*/
UIKIT_EXTERN TFY_DancerTransitionDirection _Nonnull TFY_DancerTransitionDirectionFromBottom;
/** 转场动画方向 从中间*/
UIKIT_EXTERN TFY_DancerTransitionDirection _Nonnull TFY_DancerTransitionDirectionFromMiddle;

NS_ASSUME_NONNULL_BEGIN

@interface CALayer (TFY_Dancer)<CAAnimationDelegate>

/**
 MARK: MAKE 全部以中心点为依据
 */
@property (nonatomic, copy, readonly) TFY_DancerLayerSize makeSize;
@property (nonatomic, copy, readonly) TFY_DancerLayerPoint makePosition;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeX;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeY;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeWidth;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeHeight;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeScale;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeScaleX;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeScaleY;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeRotationX;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeRotationY;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeRotationZ;
@property (nonatomic, copy, readonly) TFY_DancerLayerColor makeBackground;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeOpacity;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeCornerRadius;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeStrokeEnd;
@property (nonatomic, copy, readonly) TFY_DancerLayerContent makeContent;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeBorderWidth;
@property (nonatomic, copy, readonly) TFY_DancerLayerColor makeShadowColor;
@property (nonatomic, copy, readonly) TFY_DancerLayerSize makeShadowOffset;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeShadowOpacity;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat makeShadowRadius;

/**
 MARK: TAKE 全部以边界点为依据 (repeat无效)
 */
@property (nonatomic, copy, readonly) TFY_DancerLayerRect takeFrame;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat takeLeading;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat takeTraing;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat takeTop;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat takeBottom;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat takeWidth;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat takeHeight;
@property (nonatomic, copy, readonly) TFY_DancerLayerSize takeSize;

/**
 MARK: MOVE 相对移动 (以中心点为依据)
 */
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat moveX;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat moveY;
@property (nonatomic, copy, readonly) TFY_DancerLayerPoint moveXY;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat moveWidth;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat moveHeight;
@property (nonatomic, copy, readonly) TFY_DancerLayerSize moveSize;

/**
 MARK: ADD 相对移动(以边界为依据) (repeat无效)
 */
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat addLeading;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat addTraing;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat addTop;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat addBottom;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat addWidth;
@property (nonatomic, copy, readonly) TFY_DancerLayerFloat addHeight;
@property (nonatomic, copy, readonly) TFY_DancerLayerSize addSize;

/**
 MARK: TRANSITION 转场动画
 */
@property (nonatomic, copy, readonly) TFY_DancerLayerTransitionDirection transitionDir;

/**
 MARK: PATH 轨迹动画
 */
@property (nonatomic, copy, readonly) TFY_DancerLayerPath path;

/**
 MARK: 通用属性
 */
@property (nonatomic, copy, readonly) TFY_DancerLayerTimeInterval delay;

/**
 注: repeat对TAKE和ADD无效
 */
@property (nonatomic, copy, readonly) TFY_DancerLayerRepeat repeat;
@property (nonatomic, copy, readonly) TFY_DancerLayerAutoreverses reverses;
@property (nonatomic, copy, readonly) TFY_DancerLayerTimeInterval animate;
@property (nonatomic, copy, readwrite) TFY_DancerCompletion completion;

/**
 MARK: 动画样式
 */
- (CALayer *)easeInOut;
- (CALayer *)easeIn;
- (CALayer *)easeOut;
- (CALayer *)easeLiner;

/**
 MARK: 转场动画样式 (只适用于TRANSITION, spring无效)
 */
- (CALayer *)transitionFade; // 淡入淡出
- (CALayer *)transitionPush; // 推进效果
- (CALayer *)transitionReveal; // 揭开效果
- (CALayer *)transitionMoveIn; // 移入效果
- (CALayer *)transitionCube; // 方块效果
- (CALayer *)transitionSuck; // 三角效果
- (CALayer *)transitionRipple; // 水波效果
- (CALayer *)transitionCurl; // 上翻页效果
- (CALayer *)transitionUnCurl; // 下翻页效果
- (CALayer *)transitionFlip; // 上下翻转效果
- (CALayer *)transitionHollowOpen; // 镜头快门开效果
- (CALayer *)transitionHollowClose; // 镜头快门关效果

/**
 MARK: 弹性
 */
- (CALayer *)spring;

/**
 MARK: 关联动画,then以后前一个完成后才完成第二个
 */
- (CALayer *)then;

/**
 MARK: 刷新动画 - 移除旧的重新添加一遍
 */
- (void)reloadDancers;

/**
 MARK: 移除动画
 */
- (void)removeDancers;

@end

NS_ASSUME_NONNULL_END
