//
//  UIView+TFY_DancerProperty.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "UIView+TFY_DancerProperty.h"
#import <objc/runtime.h>

static NSString * const TFY_DancerViewPropertyDelay = @"tfy.view.property.delay";
static NSString * const TFY_DancerViewPropertyRepeat = @"tfy.view.property.repeat";
static NSString * const TFY_DancerViewPropertyReverse = @"tfy.view.property.reverse";
static NSString * const TFY_DancerViewPropertyAnimationDuration = @"tfy.view.property.animateDuration";
static NSString * const TFY_DancerViewPropertyFrom = @"tfy.view.property.from";
static NSString * const TFY_DancerViewPropertyTo = @"tfy.view.property.to";
static NSString * const TFY_DancerViewPropertyTheDancer = @"tfy.view.property.theDancer";
static NSString * const TFY_DancerViewPropertyEaseType = @"tfy.view.property.easeType";
static NSString * const TFY_DancerViewPropertySpring = @"tfy.view.property.spring";
static NSString * const TFY_DancerViewPropertyTransition = @"tfy.view.property.transition";
static NSString * const TFY_DancerViewPropertyOptions = @"tfy.view.property.options";

@implementation UIView (TFY_DancerProperty)

- (void)setTfy_view_delay:(NSTimeInterval)tfy_view_delay {
    objc_setAssociatedObject(self, &TFY_DancerViewPropertyDelay, [NSString stringWithFormat:@"%f", tfy_view_delay], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSTimeInterval)tfy_view_delay {
    return [objc_getAssociatedObject(self, &TFY_DancerViewPropertyDelay) doubleValue];
}

- (void)setTfy_view_repeat:(NSInteger)tfy_view_repeat
{
    objc_setAssociatedObject(self, &TFY_DancerViewPropertyRepeat, [NSString stringWithFormat:@"%ld", tfy_view_repeat], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger)tfy_view_repeat
{
   return [objc_getAssociatedObject(self, &TFY_DancerViewPropertyRepeat) integerValue];
}





- (void)setTfy_view_reverse:(BOOL)tfy_view_reverse
{
    objc_setAssociatedObject(self, &TFY_DancerViewPropertyReverse, @(tfy_view_reverse), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)tfy_view_reverse
{
   return [objc_getAssociatedObject(self, &TFY_DancerViewPropertyReverse) boolValue];
}





- (void)setTfy_view_animateDuration:(NSTimeInterval)tfy_view_animateDuration
{
    objc_setAssociatedObject(self, &TFY_DancerViewPropertyAnimationDuration, [NSString stringWithFormat:@"%f", tfy_view_animateDuration], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSTimeInterval)tfy_view_animateDuration
{
    return [objc_getAssociatedObject(self, &TFY_DancerViewPropertyAnimationDuration) doubleValue];
}





- (void)setTfy_view_from:(id)tfy_view_from
{
    objc_setAssociatedObject(self, &TFY_DancerViewPropertyFrom, tfy_view_from, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)tfy_view_from
{
    return objc_getAssociatedObject(self, &TFY_DancerViewPropertyFrom);
}



- (void)setTfy_view_to:(id)tfy_view_to
{
    objc_setAssociatedObject(self, &TFY_DancerViewPropertyTo, tfy_view_to, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)tfy_view_to
{
   return objc_getAssociatedObject(self, &TFY_DancerViewPropertyTo);
}




- (void)setTfy_view_theDancer:(TFY_Dancer)tfy_view_theDancer
{
    objc_setAssociatedObject(self, &TFY_DancerViewPropertyTheDancer, @(tfy_view_theDancer), OBJC_ASSOCIATION_ASSIGN);
}

- (TFY_Dancer)tfy_view_theDancer
{
    return [objc_getAssociatedObject(self, &TFY_DancerViewPropertyTheDancer) integerValue];
}




- (void)setTfy_view_easeType:(TFY_ViewEaseType)tfy_view_easeType
{
    objc_setAssociatedObject(self, &TFY_DancerViewPropertyEaseType, @(tfy_view_easeType), OBJC_ASSOCIATION_ASSIGN);
}

- (TFY_ViewEaseType)tfy_view_easeType
{
    return [objc_getAssociatedObject(self, &TFY_DancerViewPropertyEaseType) integerValue];
}





- (void)setTfy_view_spring:(BOOL)tfy_view_spring
{
   objc_setAssociatedObject(self, &TFY_DancerViewPropertySpring, @(tfy_view_spring), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)tfy_view_spring
{
    return [objc_getAssociatedObject(self, &TFY_DancerViewPropertySpring) boolValue];
}




- (void)setTfy_view_transition:(BOOL)tfy_view_transition
{
    objc_setAssociatedObject(self, &TFY_DancerViewPropertyTransition, @(tfy_view_transition), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)tfy_view_transition
{
    return [objc_getAssociatedObject(self, &TFY_DancerViewPropertyTransition) boolValue];
}





- (void)setTfy_view_options:(UIViewAnimationOptions)tfy_view_options
{
    objc_setAssociatedObject(self, &TFY_DancerViewPropertyOptions, @(tfy_view_options), OBJC_ASSOCIATION_ASSIGN);
}

- (UIViewAnimationOptions)tfy_view_options
{
    return [objc_getAssociatedObject(self, &TFY_DancerViewPropertyOptions) integerValue];
}


@end
