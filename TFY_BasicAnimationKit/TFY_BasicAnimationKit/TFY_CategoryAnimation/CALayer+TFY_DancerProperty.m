//
//  CALayer+TFY_DancerProperty.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "CALayer+TFY_DancerProperty.h"
#import <objc/runtime.h>

static NSString * const TFY_DancerPropertyDancerType = @"tfy.dancer.type";
static NSString * const TFY_DancerPropertyTiming = @"tfy.dancer.timing";
static NSString * const TFY_DancerPropertyOptions = @"tfy.dancer.options";
static NSString * const TFY_DancerPropertyDelay = @"tfy.dancer.delay";
static NSString * const TFY_DancerPropertyRepeat = @"tfy.dancer.repeat";
static NSString * const TFY_DancerPropertyReverse = @"tfy.dancer.reverse";
static NSString * const TFY_DancerPropertyCAAnimation = @"tfy.dancer.is.caanimation";
static NSString * const TFY_DancerPropertyDuration = @"tfy.dancer.duration";
static NSString * const TFY_DancerPropertyKeyParh = @"tfy.dancer.keyPath";
static NSString * const TFY_DancerPropertyFrom = @"tfy.dancer.from";
static NSString * const TFY_DancerPropertyTo = @"tfy.dancer.to";
static NSString * const TFY_DancerPropertyFrameKeypath = @"tfy.dancer.frame.keypath";
static NSString * const TFY_DancerPropertyTheDancer = @"tfy.dancer.theDancer";
static NSString * const TFY_DancerPropertyTransition = @"tfy.dancer.transition";
static NSString * const TFY_DancerPropertyFrameOrigin = @"tfy.dancer.frame.origin";

@implementation CALayer (TFY_DancerProperty)

- (void)setTfy_dancerType:(TFY_DancerType)tfy_dancerType
{
    objc_setAssociatedObject(self, &TFY_DancerPropertyDancerType, @(tfy_dancerType), OBJC_ASSOCIATION_ASSIGN);
}

- (TFY_DancerType)tfy_dancerType
{
    return [objc_getAssociatedObject(self, &TFY_DancerPropertyDancerType) integerValue];
}




- (void)setTfy_timing:(CAMediaTimingFunctionName)tfy_timing
{
    objc_setAssociatedObject(self, &TFY_DancerPropertyTiming, tfy_timing, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CAMediaTimingFunctionName)tfy_timing
{
    return (CAMediaTimingFunctionName)objc_getAssociatedObject(self, &TFY_DancerPropertyTiming);
}





- (void)setTfy_options:(UIViewAnimationOptions)tfy_options
{
  objc_setAssociatedObject(self, &TFY_DancerPropertyOptions, @(tfy_options), OBJC_ASSOCIATION_ASSIGN);
}

- (UIViewAnimationOptions)tfy_options
{
   return [objc_getAssociatedObject(self, &TFY_DancerPropertyOptions) integerValue];
}





- (void)setTfy_delay:(NSTimeInterval)tfy_delay
{
   objc_setAssociatedObject(self, &TFY_DancerPropertyDelay, [NSString stringWithFormat:@"%f",tfy_delay], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSTimeInterval)tfy_delay
{
    return [objc_getAssociatedObject(self, &TFY_DancerPropertyDelay) doubleValue];
}




- (void)setTfy_repeat:(NSInteger)tfy_repeat
{
    objc_setAssociatedObject(self, &TFY_DancerPropertyRepeat, [NSString stringWithFormat:@"%ld", tfy_repeat], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger)tfy_repeat
{
    return [objc_getAssociatedObject(self, &TFY_DancerPropertyRepeat) integerValue];
}



- (void)setTfy_reverse:(BOOL)tfy_reverse
{
    objc_setAssociatedObject(self, &TFY_DancerPropertyReverse, @(tfy_reverse), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)tfy_reverse
{
    return [objc_getAssociatedObject(self, &TFY_DancerPropertyReverse) boolValue];
}




- (void)setTfy_isCAAnimation:(BOOL)tfy_isCAAnimation
{
    objc_setAssociatedObject(self, &TFY_DancerPropertyCAAnimation, @(tfy_isCAAnimation), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)tfy_isCAAnimation
{
    return [objc_getAssociatedObject(self, &TFY_DancerPropertyCAAnimation) boolValue];
}




- (void)setTfy_animateDuration:(NSTimeInterval)tfy_animateDuration
{
    objc_setAssociatedObject(self, &TFY_DancerPropertyDuration, [NSString stringWithFormat:@"%f", tfy_animateDuration], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSTimeInterval)tfy_animateDuration
{
   return [objc_getAssociatedObject(self, &TFY_DancerPropertyDuration) doubleValue];
}




- (void)setTfy_keyPath:(NSString *)tfy_keyPath
{
    objc_setAssociatedObject(self, &TFY_DancerPropertyKeyParh, tfy_keyPath, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)tfy_keyPath
{
    return objc_getAssociatedObject(self, &TFY_DancerPropertyKeyParh);
}



- (void)setTfy_from:(id)tfy_from
{
    objc_setAssociatedObject(self, &TFY_DancerPropertyFrom, tfy_from, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)tfy_from
{
    return objc_getAssociatedObject(self, &TFY_DancerPropertyFrom);
}



- (void)setTfy_to:(id)tfy_to
{
   objc_setAssociatedObject(self, &TFY_DancerPropertyTo, tfy_to, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)tfy_to
{
    return objc_getAssociatedObject(self, &TFY_DancerPropertyTo);
}





- (void)setTfy_frameKeyPath:(NSString *)tfy_frameKeyPath
{
    objc_setAssociatedObject(self, &TFY_DancerPropertyFrameKeypath, tfy_frameKeyPath, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)tfy_frameKeyPath
{
    return objc_getAssociatedObject(self, &TFY_DancerPropertyFrameKeypath);
}




- (void)setTfy_theDancer:(TFY_Dancer)tfy_theDancer
{
    objc_setAssociatedObject(self, &TFY_DancerPropertyTheDancer, @(tfy_theDancer), OBJC_ASSOCIATION_ASSIGN);
}

- (TFY_Dancer)tfy_theDancer
{
   return [objc_getAssociatedObject(self, &TFY_DancerPropertyTheDancer) integerValue];
}



- (void)setTfy_transitionType:(TFY_DancerTransitionType)tfy_transitionType
{
   objc_setAssociatedObject(self, &TFY_DancerPropertyTransition, tfy_transitionType, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (TFY_DancerTransitionType)tfy_transitionType
{
    return objc_getAssociatedObject(self, &TFY_DancerPropertyTransition);
}



- (void)setTfy_frameOrigin:(CGRect)tfy_frameOrigin
{
    objc_setAssociatedObject(self, &TFY_DancerPropertyFrameOrigin, [NSValue valueWithCGRect:tfy_frameOrigin], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGRect)tfy_frameOrigin
{
    return [objc_getAssociatedObject(self, &TFY_DancerPropertyFrameOrigin) CGRectValue];
}


@end
