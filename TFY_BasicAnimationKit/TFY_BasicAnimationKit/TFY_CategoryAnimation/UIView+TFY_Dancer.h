//
//  UIView+TFY_Dancer.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

//  链式方式加载动画,以下功能以MARK为分类作划分.
//  本项目会长期维护更新.
//  (1)MAKE类,全部是以中心点为依据的动画.
//  (2)TAKE类,全部以边界点为依据.(此时暂时repeat参数是无效的,待后续处理).
//  (3)MOVE类,相对移动 (以中心点为依据).
//  (4)ADD类,相对移动(以边界为依据).
//  (5)通用是适用于所有类型的动画样式.
//  (6)不使用then参数,同时使用多个动画如makeWith(20).animate(1).makeHeight(20).animate(1)
//  会同时作用; 使用then参数时如makeWith(20).animate(1).then.makeHeight(20).animate(1)
//  会在动画widtha完成后再进行动画height
//  (7)TRANSITION 转场动画.
//
//  注: 如果没有特殊注释,则表示参数适用于所有类型.
//  凡是指定动画方式的,需要第一个调用. 例如makeWidth等

#import <UIKit/UIKit.h>
#import "CALayer+TFY_Dancer.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (TFY_Dancer)

/**
 MARK: MAKE 全部以中心点为依据
 */
@property (nonatomic, copy, readonly) TFY_DancerViewSize makeSize;
@property (nonatomic, copy, readonly) TFY_DancerViewPoint makePosition;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeX;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeY;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeWidth;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeHeight;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeScale;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeScaleX;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeScaleY;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeRotationX;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeRotationY;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeRotationZ;
@property (nonatomic, copy, readonly) TFY_DancerViewColor makeBackground;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeOpacity;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeCornerRadius;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeStrokeEnd;
@property (nonatomic, copy, readonly) TFY_DancerViewContent makeContent;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeBorderWidth;
@property (nonatomic, copy, readonly) TFY_DancerViewColor makeShadowColor;
@property (nonatomic, copy, readonly) TFY_DancerViewSize makeShadowOffset;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeShadowOpacity;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat makeShadowRadius;


/**
 MARK: TAKE 全部以边界点为依据 (repeat无效)
 */
@property (nonatomic, copy, readonly) TFY_DancerViewRect takeFrame;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat takeLeading;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat takeTraing;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat takeTop;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat takeBottom;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat takeWidth;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat takeHeight;
@property (nonatomic, copy, readonly) TFY_DancerViewSize takeSize;




/**
 MARK: MOVE 相对移动 (以中心点为依据)
 */
@property (nonatomic, copy, readonly) TFY_DancerViewFloat moveX;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat moveY;
@property (nonatomic, copy, readonly) TFY_DancerViewPoint moveXY;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat moveWidth;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat moveHeight;
@property (nonatomic, copy, readonly) TFY_DancerViewSize moveSize;



/**
 MARK: ADD 相对移动(以边界为依据) (repeat无效)
 */
@property (nonatomic, copy, readonly) TFY_DancerViewFloat addLeading;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat addTraing;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat addTop;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat addBottom;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat addWidth;
@property (nonatomic, copy, readonly) TFY_DancerViewFloat addHeight;
@property (nonatomic, copy, readonly) TFY_DancerViewSize addSize;



/**
 MARK: ADD 相对移动(以边界为依据) (repeat无效)
 注: Repeat无效
 单独transitionFlipFromLeft等,表示当前视图的变化;再调用transitionTo则表示是从当前转换到另一个.
 */
@property (nonatomic, copy, readonly) TFY_DancerViewTransitionTo transitionTo;


/**
 MARK: PATH 轨迹动画
 */
@property (nonatomic, copy, readonly) TFY_DancerViewPath path;




/**
 MARK: 通用属性
 */
@property (nonatomic, copy, readonly) TFY_DancerViewTimeInterval delay;
@property (nonatomic, copy, readonly) TFY_DancerViewRepeat repeat;
@property (nonatomic, copy, readonly) TFY_DancerViewAutoreverses reverses;
@property (nonatomic, copy, readonly) TFY_DancerViewTimeInterval animate;
@property (nonatomic, copy, readwrite) TFY_DancerCompletion completion;




/**
 MARK: 动画样式, TRANSITION时无效
 */
- (UIView *)easeInOut;
- (UIView *)easeIn;
- (UIView *)easeOut;
- (UIView *)easeLiner;




/**
 MARK: 转场动画样式 (只适用于TRANSITION, spring无效. 其他通过layer去操作)
 */
- (UIView *)transitionFlipFromLeft;
- (UIView *)transitionFromRight;
- (UIView *)transitionCurlUp;
- (UIView *)transitionCurlDown;
- (UIView *)transitionCrossDissolve;
- (UIView *)transitionFlipFromTop;
- (UIView *)transitionFlipFromBottom;



/**
 MARK: 弹性
 */
- (UIView *)spring;




/**
 MARK: 关联动画,then以后前一个完成后才完成第二个
 */
- (UIView *)then;




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
