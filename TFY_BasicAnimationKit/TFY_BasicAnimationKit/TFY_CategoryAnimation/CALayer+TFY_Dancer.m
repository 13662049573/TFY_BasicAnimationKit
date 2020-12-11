//
//  CALayer+TFY_Dancer.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "CALayer+TFY_Dancer.h"
#import <objc/runtime.h>
#import "CALayer+TFY_DancerProperty.h"
#import "CALayer+TFY_Frame.h"

CABasicAnimation * tfy_baseDancerCreate(NSString * keyPath,
                                           NSTimeInterval duration,
                                           NSInteger repeatCount,
                                           NSTimeInterval delay,
                                           BOOL autoreverses,
                                           CAMediaTimingFunctionName timing,
                                           id from,
                                           id to)
{
    CABasicAnimation * base = [CABasicAnimation animationWithKeyPath:keyPath];
    base.removedOnCompletion = NO;
    base.duration = duration;
    base.repeatCount = repeatCount;
    base.fillMode = kCAFillModeForwards;
    base.beginTime = CACurrentMediaTime() + delay;
    base.timingFunction = [CAMediaTimingFunction functionWithName:timing];
    base.autoreverses = autoreverses;
    base.fromValue = from;
    base.toValue = to;
    return base;
}

CASpringAnimation * tfy_springDancerCreate(NSString * keyPath,
                                              NSTimeInterval duration,
                                              NSInteger repeatCount,
                                              NSTimeInterval delay,
                                              BOOL autoreverses,
                                              CAMediaTimingFunctionName timing,
                                              id from,
                                              id to)
{
    CASpringAnimation * spring = [CASpringAnimation animationWithKeyPath:keyPath];
    spring.removedOnCompletion = NO;
    spring.duration = duration;
    spring.repeatCount = repeatCount;
    spring.fillMode = kCAFillModeForwards;
    spring.beginTime = CACurrentMediaTime() + delay;
    spring.timingFunction = [CAMediaTimingFunction functionWithName:timing];
    spring.autoreverses = autoreverses;
    spring.fromValue = from;
    spring.toValue = to;
    spring.mass = 1.0;
    spring.stiffness = 100;
    spring.damping = 10;
    spring.initialVelocity = 10.0;
    return spring;
}

CAKeyframeAnimation * tfy_keyframeDancerCreate(NSString * keyPath,
                                                  NSTimeInterval duration,
                                                  NSInteger repeatCount,
                                                  NSTimeInterval delay,
                                                  BOOL autoreverses,
                                                  CAMediaTimingFunctionName timing,
                                                  CGPathRef path)
{
    CAKeyframeAnimation * keyframe = [CAKeyframeAnimation animationWithKeyPath:keyPath];
    keyframe.removedOnCompletion = NO;
    keyframe.duration = duration;
    keyframe.repeatCount = repeatCount;
    keyframe.fillMode = kCAFillModeForwards;
    keyframe.beginTime = CACurrentMediaTime() + delay;
    keyframe.timingFunction = [CAMediaTimingFunction functionWithName:timing];
    keyframe.autoreverses = autoreverses;
    keyframe.path = path;
    return keyframe;
}

CATransition * tfy_transitionCreate(NSTimeInterval duration,
                                    CAMediaTimingFunctionName timing,
                                    TFY_DancerTransitionType type,
                                    TFY_DancerTransitionDirection direction,
                                    NSInteger repeatCount,
                                    NSTimeInterval delay,
                                    BOOL autoreverses)
{
    CATransition  *transition = [CATransition animation];
    transition.duration = duration;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:timing];
    transition.type = type;
    transition.subtype = direction;
    transition.repeatCount = repeatCount;
    transition.beginTime = CACurrentMediaTime() + delay;
    transition.autoreverses = autoreverses;
    return transition;
}


static NSString * const TFY_DancerCompletionKey = @"tfy.completion";


static NSString * const CADancerKeyPathPosition = @"position";
static NSString * const CADancerKeyPathPositionX = @"position.x";
static NSString * const CADancerKeyPathPositionY = @"position.y";
static NSString * const CADancerKeyPathWidth = @"bounds.size.width";
static NSString * const CADancerKeyPathHeight = @"bounds.size.height";
static NSString * const CADancerKeyPathSize = @"bounds.size";
static NSString * const CADancerKeyPathScale = @"transform.scale";
static NSString * const CADancerKeyPathScaleX = @"transform.scale.x";
static NSString * const CADancerKeyPathScaleY = @"transform.scale.y";
static NSString * const CADancerKeyPathRotationX = @"transform.rotation.x";
static NSString * const CADancerKeyPathRotationY = @"transform.rotation.y";
static NSString * const CADancerKeyPathRotationZ = @"transform.rotation.z";
static NSString * const CADancerKeyPathBackgroundColor = @"backgroundColor";
static NSString * const CADancerKeyPathOpacity = @"opacity";
static NSString * const CADancerKeyPathCornerRadius = @"cornerRadius";
static NSString * const CADancerKeyPathStrokeEnd = @"strokeEnd";
static NSString * const CADancerKeyPathContent = @"contents";
static NSString * const CADancerKeyPathBorderWidth = @"borderWidth";
static NSString * const CADancerKeyPathShadowColor = @"shadowColor";
static NSString * const CADancerKeyPathShadowOffset = @"shadowOffset";
static NSString * const CADancerKeyPathShadowOpacity = @"shadowOpacity";
static NSString * const CADancerKeyPathShadowRadius = @"shadowRadius";



static NSString * const UIViewDancerKeyFrame = @"tfy.take.frame";
static NSString * const UIViewDancerKeyLeading = @"tfy.take.leading";
static NSString * const UIViewDancerKeyTraing = @"tfy.take.traing";
static NSString * const UIViewDancerKeyTop = @"tfy.take.top";
static NSString * const UIViewDancerKeyBottom = @"tfy.take.bottom";
static NSString * const UIViewDancerKeyWidth = @"tfy.take.width";
static NSString * const UIViewDancerKeyHeight = @"tfy.take.height";
static NSString * const UIViewDancerKeySize = @"tfy.take.size";



static TFY_DancerTransitionType const TFY_DancerTransitionTypeFade = @"fade";
static TFY_DancerTransitionType const TFY_DancerTransitionTypePush = @"push";
static TFY_DancerTransitionType const TFY_DancerTransitionTypeReveal = @"reveal";
static TFY_DancerTransitionType const TFY_DancerTransitionTypeMoveIn = @"moveIn";
static TFY_DancerTransitionType const TFY_DancerTransitionTypeCube = @"cube";
static TFY_DancerTransitionType const TFY_DancerTransitionTypeSuck = @"suckEffect";
static TFY_DancerTransitionType const TFY_DancerTransitionTypeRipple = @"rippleEffect";
static TFY_DancerTransitionType const TFY_DancerTransitionTypeCurl = @"pageCurl";
static TFY_DancerTransitionType const TFY_DancerTransitionTypeUnCurl = @"pageUnCurl";
static TFY_DancerTransitionType const TFY_DancerTransitionTypeFlip = @"oglFlip";
static TFY_DancerTransitionType const TFY_DancerTransitionTypeHollowOpen = @"cameraIrisHollowOpen";
static TFY_DancerTransitionType const TFY_DancerTransitionTypeHollowClose = @"cameraIrisHollowClose";



TFY_DancerTransitionDirection TFY_DancerTransitionDirectionFromRight = @"fromRight";
TFY_DancerTransitionDirection TFY_DancerTransitionDirectionFromLeft = @"fromLeft";
TFY_DancerTransitionDirection TFY_DancerTransitionDirectionFromTop = @"fromTop";
TFY_DancerTransitionDirection TFY_DancerTransitionDirectionFromBottom = @"fromBottom";
TFY_DancerTransitionDirection TFY_DancerTransitionDirectionFromMiddle = @"middle";

@implementation CALayer (TFY_Dancer)

#pragma mark -MAKE
- (TFY_DancerLayerPoint)makePosition
{
    return ^CALayer *(CGPoint point) {
        self.tfy_keyPath = CADancerKeyPathPosition;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = [NSValue valueWithCGPoint:CGPointMake(self.dancer_centerX, self.dancer_centerY)];
        self.tfy_to = [NSValue valueWithCGPoint:point];
        self.tfy_theDancer = TFY_DancerMakePosition;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeX
{
    return ^CALayer *(CGFloat x) {
        self.tfy_keyPath = CADancerKeyPathPositionX;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.dancer_centerX);
        self.tfy_to = @(x);
        self.tfy_theDancer = TFY_DancerMakeX;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeY
{
    return ^CALayer *(CGFloat y) {
        self.tfy_keyPath = CADancerKeyPathPositionY;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.dancer_centerY);
        self.tfy_to = @(y);
        self.tfy_theDancer = TFY_DancerMakeY;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeWidth
{
    return ^CALayer *(CGFloat width) {
        self.tfy_keyPath = CADancerKeyPathWidth;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.dancer_width);
        self.tfy_to = @(width);
        self.tfy_theDancer = TFY_DancerMakeWidth;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeHeight
{
    return ^CALayer *(CGFloat height) {
        self.tfy_keyPath = CADancerKeyPathHeight;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.dancer_height);
        self.tfy_to = @(height);
        self.tfy_theDancer = TFY_DancerMakeHeight;
        return self;
    };
}

- (TFY_DancerLayerSize)makeSize
{
    return ^CALayer *(CGSize size) {
        self.tfy_keyPath = CADancerKeyPathSize;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = [NSValue valueWithCGSize:self.bounds.size];
        self.tfy_to = [NSValue valueWithCGSize:size];
        self.tfy_theDancer = TFY_DancerMakeSize;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeScale
{
    return ^CALayer *(CGFloat scale) {
        self.tfy_keyPath = CADancerKeyPathScale;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(1.0);
        self.tfy_to = @(scale);
        self.tfy_theDancer = TFY_DancerMakeScale;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeScaleX
{
    return ^CALayer *(CGFloat scaleX) {
        self.tfy_keyPath = CADancerKeyPathScaleX;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(1.0);
        self.tfy_to = @(scaleX);
        self.tfy_theDancer = TFY_DancerMakeScaleX;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeScaleY
{
    return ^CALayer *(CGFloat scaleY) {
        self.tfy_keyPath = CADancerKeyPathScaleY;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(1.0);
        self.tfy_to = @(scaleY);
        self.tfy_theDancer = TFY_DancerMakeScaleY;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeRotationX
{
    return ^CALayer *(CGFloat retationX) {
        self.tfy_keyPath = CADancerKeyPathRotationX;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(0);
        self.tfy_to = @(retationX);
        self.tfy_theDancer = TFY_DancerMakeRotationX;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeRotationY
{
    return ^CALayer *(CGFloat retationY) {
        self.tfy_keyPath = CADancerKeyPathRotationY;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(0);
        self.tfy_to = @(retationY);
        self.tfy_theDancer = TFY_DancerMakeRotationY;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeRotationZ
{
    return ^CALayer *(CGFloat retationZ) {
        self.tfy_keyPath = CADancerKeyPathRotationZ;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(0);
        self.tfy_to = @(retationZ);
        self.tfy_theDancer = TFY_DancerMakeRotationZ;
        return self;
    };
}

- (TFY_DancerLayerColor)makeBackground
{
    return ^CALayer * (UIColor * background) {
        self.tfy_keyPath = CADancerKeyPathBackgroundColor;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = (id)self.backgroundColor;
        self.tfy_to = (id)background.CGColor;
        self.tfy_theDancer = TFY_DancerMakeBackground;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeOpacity
{
    return ^CALayer *(CGFloat opacity) {
        self.tfy_keyPath = CADancerKeyPathOpacity;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.opacity);
        self.tfy_to = @(opacity);
        self.tfy_theDancer = TFY_DancerMakeOpacity;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeCornerRadius
{
    return ^CALayer *(CGFloat corner) {
        self.tfy_keyPath = CADancerKeyPathCornerRadius;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.cornerRadius);
        self.tfy_to = @(corner);
        self.tfy_theDancer = TFY_DancerMakeCornerRadius;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeStrokeEnd
{
    return ^CALayer *(CGFloat stroke) {
        self.tfy_keyPath = CADancerKeyPathStrokeEnd;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(0);
        self.tfy_to = @(stroke);
        self.tfy_theDancer = TFY_DancerMakeStrokeEnd;
        return self;
    };
}

- (TFY_DancerLayerContent)makeContent
{
    return ^CALayer *(id from, id to) {
        self.tfy_keyPath = CADancerKeyPathContent;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = from;
        self.tfy_to = to;
        self.tfy_theDancer = TFY_DancerMakeContent;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeBorderWidth
{
    return ^CALayer *(CGFloat borderWidth) {
        self.tfy_keyPath = CADancerKeyPathBorderWidth;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.borderWidth);
        self.tfy_to = @(borderWidth);
        self.tfy_theDancer = TFY_DancerMakeBorderWidth;
        return self;
    };
}

- (TFY_DancerLayerColor)makeShadowColor
{
    return ^CALayer *(UIColor * shadowColor) {
        self.tfy_keyPath = CADancerKeyPathShadowColor;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = (id)self.shadowColor;
        self.tfy_to = (id)shadowColor.CGColor;
        self.tfy_theDancer = TFY_DancerMakeShadowColor;
        return self;
    };
}

- (TFY_DancerLayerSize)makeShadowOffset
{
    return ^CALayer * (CGSize offset) {
        self.tfy_keyPath = CADancerKeyPathShadowOffset;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = [NSValue valueWithCGSize:self.shadowOffset];
        self.tfy_to = [NSValue valueWithCGSize:offset];
        self.tfy_theDancer = TFY_DancerMakeShadowOffset;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeShadowOpacity
{
    return ^CALayer *(CGFloat shadowOpacity) {
        self.tfy_keyPath = CADancerKeyPathShadowOpacity;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.shadowOpacity);
        self.tfy_to = @(shadowOpacity);
        self.tfy_theDancer = TFY_DancerMakeShadowOpacity;
        return self;
    };
}

- (TFY_DancerLayerFloat)makeShadowRadius
{
    return ^CALayer *(CGFloat shadowRadius) {
        self.tfy_keyPath = CADancerKeyPathShadowRadius;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.shadowRadius);
        self.tfy_to = @(shadowRadius);
        self.tfy_theDancer = TFY_DancerMakeShadowRadius;
        return self;
    };
}



#pragma mark -TAKE
- (TFY_DancerLayerRect)takeFrame
{
    return ^CALayer *(CGRect frame) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyFrame;
        self.tfy_to = [NSValue valueWithCGRect:frame];
        self.tfy_theDancer = TFY_DancerTakeFrame;
        return self;
    };
}

- (TFY_DancerLayerFloat)takeLeading
{
    return ^CALayer *(CGFloat leading) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyLeading;
        self.tfy_to = @(leading);
        self.tfy_theDancer = TFY_DancerTakeLeading;
        return self;
    };
}

- (TFY_DancerLayerFloat)takeTraing
{
    return ^CALayer *(CGFloat traing) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyTraing;
        self.tfy_to = @(traing);
        self.tfy_theDancer = TFY_DancerTakeTraing;
        return self;
    };
}

- (TFY_DancerLayerFloat)takeTop
{
    return ^CALayer *(CGFloat top) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyTop;
        self.tfy_to = @(top);
        self.tfy_theDancer = TFY_DancerTakeTop;
        return self;
    };
}

- (TFY_DancerLayerFloat)takeBottom
{
    return ^CALayer *(CGFloat bottom) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyBottom;
        self.tfy_to = @(bottom);
        self.tfy_theDancer = TFY_DancerTakeBottom;
        return self;
    };
}

- (TFY_DancerLayerFloat)takeWidth
{
    return ^CALayer *(CGFloat width) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyWidth;
        self.tfy_to = @(width);
        self.tfy_theDancer = TFY_DancerTakeWidth;
        return self;
    };
}

- (TFY_DancerLayerFloat)takeHeight
{
    return ^CALayer *(CGFloat height) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyHeight;
        self.tfy_to = @(height);
        self.tfy_theDancer = TFY_DancerTakeHeight;
        return self;
    };
}

- (TFY_DancerLayerSize)takeSize
{
    return ^CALayer *(CGSize size) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeySize;
        self.tfy_to = [NSValue valueWithCGSize:size];
        self.tfy_theDancer = TFY_DancerTakeSize;
        return self;
    };
}



#pragma mark -MOVE
- (TFY_DancerLayerFloat)moveX
{
    return ^CALayer *(CGFloat relativeX) {
        self.tfy_keyPath = CADancerKeyPathPositionX;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.dancer_centerX);
        self.tfy_to = @(self.dancer_centerX + relativeX);
        self.tfy_theDancer = TFY_DancerMoveX;
        return self;
    };
}

- (TFY_DancerLayerFloat)moveY
{
    return ^CALayer * (CGFloat relativeY) {
        self.tfy_keyPath = CADancerKeyPathPositionY;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.dancer_centerY);
        self.tfy_to = @(self.dancer_centerY + relativeY);
        self.tfy_theDancer = TFY_DancerMoveY;
        return self;
    };
}

- (TFY_DancerLayerPoint)moveXY
{
    return ^CALayer * (CGPoint xy) {
        self.tfy_keyPath = CADancerKeyPathPosition;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = [NSValue valueWithCGPoint:CGPointMake(self.dancer_centerX, self.dancer_centerY)];
        self.tfy_to = [NSValue valueWithCGPoint:CGPointMake(self.dancer_centerX + xy.x, self.dancer_centerY + xy.y)];
        self.tfy_theDancer = TFY_DancerMoveXY;
        return self;
    };
}

- (TFY_DancerLayerFloat)moveWidth
{
    return ^CALayer *(CGFloat width) {
        self.tfy_keyPath = CADancerKeyPathWidth;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.dancer_width);
        self.tfy_to = @(self.dancer_width + width);
        self.tfy_theDancer = TFY_DancerMoveWidth;
        return self;
    };
}

- (TFY_DancerLayerFloat)moveHeight
{
    return ^CALayer *(CGFloat height) {
        self.tfy_keyPath = CADancerKeyPathHeight;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = @(self.dancer_height);
        self.tfy_to = @(self.dancer_height + height);
        self.tfy_theDancer = TFY_DancerMoveHeight;
        return self;
    };
}

- (TFY_DancerLayerSize)moveSize
{
    return ^CALayer *(CGSize size) {
        self.tfy_keyPath = CADancerKeyPathSize;
        self.tfy_isCAAnimation = YES;
        self.tfy_from = [NSValue valueWithCGSize:CGSizeMake(self.dancer_width, self.dancer_height)];
        self.tfy_to = [NSValue valueWithCGSize:CGSizeMake(self.dancer_width + size.width, self.dancer_height + size.height)];
        self.tfy_theDancer = TFY_DancerMoveSize;
        return self;
    };
}


#pragma mark -ADD
- (TFY_DancerLayerFloat)addLeading
{
    return ^CALayer *(CGFloat leading) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyLeading;
        self.tfy_to = @(leading + self.dancer_leading);
        self.tfy_theDancer = TFY_DancerAddLeading;
        return self;
    };
}

- (TFY_DancerLayerFloat)addTraing
{
    return ^CALayer *(CGFloat traing) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyTraing;
        self.tfy_to = @(traing + self.dancer_traing);
        self.tfy_theDancer = TFY_DancerAddTraing;
        return self;
    };
}

- (TFY_DancerLayerFloat)addTop
{
    return ^CALayer *(CGFloat top) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyTop;
        self.tfy_to = @(top + self.dancer_top);
        self.tfy_theDancer = TFY_DancerAddTop;
        return self;
    };
}

- (TFY_DancerLayerFloat)addBottom
{
    return ^CALayer *(CGFloat bottom) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyBottom;
        self.tfy_to = @(bottom + self.dancer_bottom);
        self.tfy_theDancer = TFY_DancerAddBottom;
        return self;
    };
}

- (TFY_DancerLayerFloat)addWidth
{
    return ^CALayer *(CGFloat width) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyWidth;
        self.tfy_to = @(width + self.dancer_width);
        self.tfy_theDancer = TFY_DancerAddWidth;
        return self;
    };
}

- (TFY_DancerLayerFloat)addHeight
{
    return ^CALayer *(CGFloat height) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeyHeight;
        self.tfy_to = @(height + self.dancer_height);
        self.tfy_theDancer = TFY_DancerAddHeight;
        return self;
    };
}

- (TFY_DancerLayerSize)addSize
{
    return ^CALayer *(CGSize size) {
        self.tfy_isCAAnimation = NO;
        self.tfy_frameKeyPath = UIViewDancerKeySize;
        self.tfy_to = [NSValue valueWithCGSize:CGSizeMake(size.width + self.dancer_width, size.height + self.dancer_height)];
        self.tfy_theDancer = TFY_DancerAddSize;
        return self;
    };
}





#pragma mark -TRANSITION
- (TFY_DancerLayerTransitionDirection)transitionDir
{
    return ^CALayer *(TFY_DancerTransitionDirection direction) {
        self.tfy_isCAAnimation = YES;
        self.tfy_to = direction;
        self.tfy_dancerType = TFY_DancerTypeTransition;
        self.tfy_theDancer = TFY_DancerTransition;
        return self;
    };
}






#pragma mark -PATH
- (TFY_DancerLayerPath)path
{
    return ^CALayer *(UIBezierPath * path) {
        self.tfy_isCAAnimation = YES;
        self.tfy_to = path;
        self.tfy_dancerType = TFY_DancerTypePath;
        self.tfy_theDancer = TFY_DancerPath;
        self.tfy_keyPath = CADancerKeyPathPosition;
        return self;
    };
}





#pragma mark -CONTENT
- (TFY_DancerLayerTimeInterval)delay
{
    return ^CALayer *(NSTimeInterval delay) {
        self.tfy_delay = delay;
        return self;
    };
}


- (TFY_DancerLayerRepeat)repeat
{
    return ^CALayer *(NSInteger repeat) {
        self.tfy_repeat = repeat;
        return self;
    };
}


- (TFY_DancerLayerAutoreverses)reverses
{
    return ^CALayer *(BOOL isreverses) {
        self.tfy_reverse = isreverses;
        return self;
    };
}


- (TFY_DancerLayerTimeInterval)animate
{
    return ^CALayer * (NSTimeInterval duration) {
        self.tfy_animateDuration = duration;
        [self tfy_startDancer];
        return self;
    };
}

- (void)setCompletion:(TFY_DancerCompletion)completion
{
    objc_setAssociatedObject(self, &TFY_DancerCompletionKey, completion, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (TFY_DancerCompletion)completion
{
    return objc_getAssociatedObject(self, &TFY_DancerCompletionKey);
}


- (CALayer *)easeInOut
{
    self.tfy_timing = kCAMediaTimingFunctionEaseInEaseOut;
    self.tfy_options = UIViewAnimationOptionCurveEaseInOut;
    return self;
}

- (CALayer *)easeIn
{
    self.tfy_timing = kCAMediaTimingFunctionEaseIn;
    self.tfy_options = UIViewAnimationOptionCurveEaseIn;
    return self;
}

- (CALayer *)easeOut
{
    self.tfy_timing = kCAMediaTimingFunctionEaseOut;
    self.tfy_options = UIViewAnimationOptionCurveEaseOut;
    return self;
}

- (CALayer *)easeLiner
{
    self.tfy_timing = kCAMediaTimingFunctionLinear;
    self.tfy_options = UIViewAnimationOptionCurveLinear;
    return self;
}

- (CALayer *)spring
{
    self.tfy_dancerType = TFY_DancerTypeSpring;
    return self;
}







- (CALayer *)transitionFade
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypeFade;
    return self;
}

- (CALayer *)transitionPush
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypePush;
    return self;
}

- (CALayer *)transitionReveal
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypeReveal;
    return self;
}

- (CALayer *)transitionMoveIn
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypeMoveIn;
    return self;
}

- (CALayer *)transitionCube
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypeCube;
    return self;
}

- (CALayer *)transitionSuck
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypeSuck;
    return self;
}

- (CALayer *)transitionRipple
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypeRipple;
    return self;
}

- (CALayer *)transitionCurl
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypeCurl;
    return self;
}

- (CALayer *)transitionUnCurl
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypeUnCurl;
    return self;
}

- (CALayer *)transitionFlip
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypeFlip;
    return self;
}

- (CALayer *)transitionHollowOpen
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypeHollowOpen;
    return self;
}

- (CALayer *)transitionHollowClose
{
    self.tfy_isCAAnimation = YES;
    self.tfy_transitionType = TFY_DancerTransitionTypeHollowClose;
    return self;
}





- (CALayer *)then
{
    self.tfy_delay = self.tfy_animateDuration;
    return self;
}






- (void)tfy_startDancer
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self.superlayer layoutIfNeeded]; //刷新坐标
        
        if (self.tfy_isCAAnimation)
        {
            if (!self.tfy_timing)
            {
                // 默认Default
                self.tfy_timing = kCAMediaTimingFunctionLinear;
            }
            
            if (self.tfy_dancerType == TFY_DancerTypeBase)
            {
                if (!self.tfy_keyPath)
                {
                    self.tfy_keyPath = CADancerKeyPathPosition;
                }
                CABasicAnimation * base = tfy_baseDancerCreate(self.tfy_keyPath, self.tfy_animateDuration, self.tfy_repeat, self.tfy_delay, self.tfy_reverse, self.tfy_timing, self.tfy_from, self.tfy_to);
                
                base.delegate = self;
                [self addAnimation:base forKey:nil];
            }
            else if (self.tfy_dancerType == TFY_DancerTypeSpring)
            {
                if (!self.tfy_keyPath)
                {
                    self.tfy_keyPath = CADancerKeyPathPosition;
                }
                CASpringAnimation * spring = tfy_springDancerCreate(self.tfy_keyPath, self.tfy_animateDuration, self.tfy_repeat, self.tfy_delay, self.tfy_reverse, self.tfy_timing, self.tfy_from, self.tfy_to);
                spring.delegate = self;
                [self addAnimation:spring forKey:nil];
            }
            else if (self.tfy_dancerType == TFY_DancerTypePath)
            {
                if (!self.tfy_keyPath)
                {
                    self.tfy_keyPath = CADancerKeyPathPosition;
                }
                CAKeyframeAnimation * keyframe = tfy_keyframeDancerCreate(self.tfy_keyPath, self.tfy_animateDuration, self.tfy_repeat, self.tfy_delay, self.tfy_reverse, self.tfy_timing, [(UIBezierPath *)self.tfy_to CGPath]);
                keyframe.delegate = self;
                [self addAnimation:keyframe forKey:nil];
            }
            else if (self.tfy_dancerType == TFY_DancerTypeTransition)
            {
                if (!self.tfy_transitionType)
                {
                    self.tfy_transitionType = TFY_DancerTransitionTypeFade;
                }
                
                CATransition * transition = tfy_transitionCreate(self.tfy_animateDuration, self.tfy_timing, self.tfy_transitionType, self.tfy_to, self.tfy_repeat, self.tfy_delay, self.tfy_reverse);
                
                transition.delegate = self;
                [self addAnimation:transition forKey:nil];
            }
            
        }
        else
        {
            self.tfy_frameOrigin = self.frame; // 记录当前坐标
            
            if (!self.tfy_options)
            {
                self.tfy_options = UIViewAnimationOptionCurveLinear;
            }
            
            if (self.tfy_reverse)
            {
                if (self.tfy_options == UIViewAnimationOptionCurveEaseInOut)
                {
                    self.tfy_options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse;
                }
                else if (self.tfy_options == UIViewAnimationOptionCurveEaseIn)
                {
                    self.tfy_options = UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse;
                }
                else if (self.tfy_options == UIViewAnimationOptionCurveEaseOut)
                {
                    self.tfy_options = UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse;
                }
                else
                {
                    self.tfy_options = UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse;
                }
            }
            
            if (self.tfy_dancerType == TFY_DancerTypeSpring)
            {
                CGFloat damping =  0.85;
                CGFloat velocity = 10.0 ;
                
                [UIView animateWithDuration:self.tfy_animateDuration
                                      delay:self.tfy_delay
                     usingSpringWithDamping:damping
                      initialSpringVelocity:velocity
                                    options:self.tfy_options
                                 animations:^{
                                     
                                     if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyFrame])
                                     {
                                         self.frame = [(NSValue *)self.tfy_to CGRectValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyLeading])
                                     {
                                         self.dancer_leading = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyTraing])
                                     {
                                         self.dancer_traing = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyTop])
                                     {
                                         self.dancer_top = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyBottom])
                                     {
                                         self.dancer_bottom = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyWidth])
                                     {
                                         self.dancer_width = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyHeight])
                                     {
                                         self.dancer_height = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeySize])
                                     {
                                         self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, [(NSValue *)self.tfy_to CGSizeValue].width, [(NSValue *)self.tfy_to CGSizeValue].height);
                                     }
                                     
                                 }
                                 completion:^(BOOL finished) {
                                     
                                     if (self.completion)
                                     {
                                         self.completion(self.tfy_theDancer);
                                     }
                                 }];
            }
            else
            {
                [UIView animateWithDuration:self.tfy_animateDuration
                                      delay:self.tfy_delay
                                    options:self.tfy_options
                                 animations:^{
                                     
                                     if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyFrame])
                                     {
                                         self.frame = [(NSValue *)self.tfy_to CGRectValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyLeading])
                                     {
                                         self.dancer_leading = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyTraing])
                                     {
                                         self.dancer_traing = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyTop])
                                     {
                                         self.dancer_top = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyBottom])
                                     {
                                         self.dancer_bottom = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyWidth])
                                     {
                                         self.dancer_width = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeyHeight])
                                     {
                                         self.dancer_height = [self.tfy_to floatValue];
                                     }
                                     else if ([self.tfy_frameKeyPath isEqualToString:UIViewDancerKeySize])
                                     {
                                         self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, [(NSValue *)self.tfy_to CGSizeValue].width, [(NSValue *)self.tfy_to CGSizeValue].height);
                                     }
                                     
                                 }
                                 completion:^(BOOL finished) {
                                     
                                     if (self.completion)
                                     {
                                         self.completion(self.tfy_theDancer);
                                     }
                                 }];
            }
            
        }
        
    });
}


- (void)removeDancers
{
    [self removeAllAnimations];
    if (!self.tfy_isCAAnimation)
    {
        CALayer * superLayer = self.superlayer;
        [self removeFromSuperlayer];
        self.frame = self.tfy_frameOrigin;
        [superLayer addSublayer:self];
    }
}

- (void)reloadDancers
{
    [self removeDancers];
    [self tfy_startDancer];
}

#pragma mark -CAAnimationDelegate
- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    if (self.completion)
    {
        self.completion(self.tfy_theDancer);
    }
}


@end
