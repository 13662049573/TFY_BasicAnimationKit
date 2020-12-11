//
//  UIView+TFY_Dancer.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "UIView+TFY_Dancer.h"
#import "UIView+TFY_DancerProperty.h"
#import <objc/runtime.h>

static NSString * const TFY_DancerViewCompletionKey = @"tfy.view.completion";

@implementation UIView (TFY_Dancer)

- (TFY_DancerViewSize)makeSize
{
    return ^UIView *(CGSize size) {
        self.tfy_view_theDancer = TFY_DancerMakeSize;
        self.tfy_view_to = [NSValue valueWithCGSize:size];
        return self;
    };
}

- (TFY_DancerViewPoint)makePosition
{
    return ^UIView *(CGPoint position) {
        self.tfy_view_theDancer = TFY_DancerMakePosition;
        self.tfy_view_to = [NSValue valueWithCGPoint:position];
        return self;
    };
}

- (TFY_DancerViewFloat)makeX
{
    return ^UIView *(CGFloat x) {
        self.tfy_view_theDancer = TFY_DancerMakeX;
        self.tfy_view_to = @(x);
        return self;
    };
}

- (TFY_DancerViewFloat)makeY
{
    return ^ UIView *(CGFloat y) {
        self.tfy_view_theDancer = TFY_DancerMakeY;
        self.tfy_view_to = @(y);
        return self;
    };
}

- (TFY_DancerViewFloat)makeWidth
{
    return ^UIView *(CGFloat width) {
        self.tfy_view_theDancer = TFY_DancerMakeWidth;
        self.tfy_view_to = @(width);
        return self;
    };
}

- (TFY_DancerViewFloat)makeHeight
{
    return ^UIView *(CGFloat height) {
        self.tfy_view_theDancer = TFY_DancerMakeHeight;
        self.tfy_view_to = @(height);
        return self;
    };
}

- (TFY_DancerViewFloat)makeScale
{
    return ^UIView * (CGFloat scale) {
        self.tfy_view_theDancer = TFY_DancerMakeScale;
        self.tfy_view_to = @(scale);
        return self;
    };
}

- (TFY_DancerViewFloat)makeScaleX
{
    return ^UIView * (CGFloat scaleX) {
        self.tfy_view_theDancer = TFY_DancerMakeScaleX;
        self.tfy_view_to = @(scaleX);
        return self;
    };
}

- (TFY_DancerViewFloat)makeScaleY
{
    return ^UIView * (CGFloat scaleY) {
        self.tfy_view_theDancer = TFY_DancerMakeScaleY;
        self.tfy_view_to = @(scaleY);
        return self;
    };
}

- (TFY_DancerViewFloat)makeRotationX
{
    return ^UIView * (CGFloat rotationX) {
        self.tfy_view_theDancer = TFY_DancerMakeRotationX;
        self.tfy_view_to = @(rotationX);
        return self;
    };
}

- (TFY_DancerViewFloat)makeRotationY
{
    return ^UIView * (CGFloat rotationY) {
        self.tfy_view_theDancer = TFY_DancerMakeRotationY;
        self.tfy_view_to = @(rotationY);
        return self;
    };
}

- (TFY_DancerViewFloat)makeRotationZ
{
    return ^UIView * (CGFloat rotationZ) {
        self.tfy_view_theDancer = TFY_DancerMakeRotationZ;
        self.tfy_view_to = @(rotationZ);
        return self;
    };
}

- (TFY_DancerViewColor)makeBackground
{
    return ^UIView * (UIColor * color) {
        self.tfy_view_theDancer = TFY_DancerMakeBackground;
        self.tfy_view_to = color;
        return self;
    };
}

- (TFY_DancerViewFloat)makeOpacity
{
    return ^UIView * (CGFloat opacity) {
        self.tfy_view_theDancer = TFY_DancerMakeOpacity;
        self.tfy_view_to = @(opacity);
        return self;
    };
}

- (TFY_DancerViewFloat)makeCornerRadius
{
    return ^UIView * (CGFloat corner) {
        self.tfy_view_theDancer = TFY_DancerMakeCornerRadius;
        self.tfy_view_to = @(corner);
        return self;
    };
}

- (TFY_DancerViewFloat)makeStrokeEnd
{
    return ^UIView * (CGFloat storeEnd) {
        self.tfy_view_theDancer = TFY_DancerMakeStrokeEnd;
        self.tfy_view_to = @(storeEnd);
        return self;
    };
}

- (TFY_DancerViewContent)makeContent
{
    return ^UIView * (id from, id to) {
        self.tfy_view_theDancer = TFY_DancerMakeContent;
        self.tfy_view_from = from;
        self.tfy_view_to = to;
        return self;
    };
}

- (TFY_DancerViewFloat)makeBorderWidth
{
    return ^UIView * (CGFloat borderWidth) {
        self.tfy_view_theDancer = TFY_DancerMakeBorderWidth;
        self.tfy_view_to = @(borderWidth);
        return self;
    };
}

- (TFY_DancerViewColor)makeShadowColor
{
    return ^UIView * (UIColor * shadowColor) {
        self.tfy_view_theDancer = TFY_DancerMakeShadowColor;
        self.tfy_view_to = shadowColor;
        return self;
    };
}

- (TFY_DancerViewSize)makeShadowOffset
{
    return ^UIView * (CGSize size) {
        self.tfy_view_theDancer = TFY_DancerMakeShadowOffset;
        self.tfy_view_to = [NSValue valueWithCGSize:size];
        return self;
    };
}

- (TFY_DancerViewFloat)makeShadowOpacity
{
    return ^UIView * (CGFloat opacity) {
        self.tfy_view_theDancer = TFY_DancerMakeShadowOpacity;
        self.tfy_view_to = @(opacity);
        return self;
    };
}

- (TFY_DancerViewFloat)makeShadowRadius
{
    return ^UIView * (CGFloat radius) {
        self.tfy_view_theDancer = TFY_DancerMakeShadowRadius;
        self.tfy_view_to = @(radius);
        return self;
    };
}




#pragma mark -TAKE
- (TFY_DancerViewRect)takeFrame
{
    return ^UIView * (CGRect rect) {
        self.tfy_view_theDancer = TFY_DancerTakeFrame;
        self.tfy_view_to = [NSValue valueWithCGRect:rect];
        return self;
    };
}

- (TFY_DancerViewFloat)takeLeading
{
    return ^UIView * (CGFloat leading) {
        self.tfy_view_theDancer = TFY_DancerTakeLeading;
        self.tfy_view_to = @(leading);
        return self;
    };
}

- (TFY_DancerViewFloat)takeTraing
{
    return ^UIView * (CGFloat traing) {
        self.tfy_view_theDancer = TFY_DancerTakeTraing;
        self.tfy_view_to = @(traing);
        return self;
    };
}

- (TFY_DancerViewFloat)takeTop
{
    return ^UIView * (CGFloat top) {
        self.tfy_view_theDancer = TFY_DancerTakeTop;
        self.tfy_view_to = @(top);
        return self;
    };
}

- (TFY_DancerViewFloat)takeBottom
{
    return ^UIView * (CGFloat bottom) {
        self.tfy_view_theDancer = TFY_DancerTakeBottom;
        self.tfy_view_to = @(bottom);
        return self;
    };
}

- (TFY_DancerViewFloat)takeWidth
{
    return ^UIView * (CGFloat width) {
        self.tfy_view_theDancer = TFY_DancerTakeWidth;
        self.tfy_view_to = @(width);
        return self;
    };
}

- (TFY_DancerViewFloat)takeHeight
{
    return ^UIView * (CGFloat height) {
        self.tfy_view_theDancer = TFY_DancerTakeHeight;
        self.tfy_view_to = @(height);
        return self;
    };
}

- (TFY_DancerViewSize)takeSize
{
    return ^UIView * (CGSize size) {
        self.tfy_view_theDancer = TFY_DancerTakeSize;
        self.tfy_view_to = [NSValue valueWithCGSize:size];
        return self;
    };
}





#pragma mark -MOVE
- (TFY_DancerViewFloat)moveX
{
    return ^UIView * (CGFloat x) {
        self.tfy_view_theDancer = TFY_DancerMoveX;
        self.tfy_view_to = @(x);
        return self;
    };
}

- (TFY_DancerViewFloat)moveY
{
    return ^UIView * (CGFloat y) {
        self.tfy_view_theDancer = TFY_DancerMoveY;
        self.tfy_view_to = @(y);
        return self;
    };
}

- (TFY_DancerViewPoint)moveXY
{
    return ^UIView * (CGPoint xy) {
        self.tfy_view_theDancer = TFY_DancerMoveXY;
        self.tfy_view_to = [NSValue valueWithCGPoint:xy];
        return self;
    };
}

- (TFY_DancerViewFloat)moveWidth
{
    return ^UIView * (CGFloat width) {
        self.tfy_view_theDancer = TFY_DancerMoveWidth;
        self.tfy_view_to = @(width);
        return self;
    };
}

- (TFY_DancerViewFloat)moveHeight
{
    return ^UIView * (CGFloat height) {
        self.tfy_view_theDancer = TFY_DancerMoveHeight;
        self.tfy_view_to = @(height);
        return self;
    };
}

- (TFY_DancerViewSize)moveSize
{
    return ^UIView * (CGSize size) {
        self.tfy_view_theDancer = TFY_DancerMoveSize;
        self.tfy_view_to = [NSValue valueWithCGSize:size];
        return self;
    };
}




#pragma mark - ADD
- (TFY_DancerViewFloat)addLeading
{
    return ^UIView * (CGFloat leading) {
        self.tfy_view_theDancer = TFY_DancerAddLeading;
        self.tfy_view_to = @(leading);
        return self;
    };
}

- (TFY_DancerViewFloat)addTraing
{
    return ^UIView * (CGFloat traing) {
        self.tfy_view_theDancer = TFY_DancerAddTraing;
        self.tfy_view_to = @(traing);
        return self;
    };
}

- (TFY_DancerViewFloat)addTop
{
    return ^UIView * (CGFloat top) {
        self.tfy_view_theDancer = TFY_DancerAddTop;
        self.tfy_view_to = @(top);
        return self;
    };
}

- (TFY_DancerViewFloat)addBottom
{
    return ^UIView * (CGFloat bottom) {
        self.tfy_view_theDancer = TFY_DancerAddBottom;
        self.tfy_view_to = @(bottom);
        return self;
    };
}

- (TFY_DancerViewFloat)addWidth
{
    return ^UIView * (CGFloat width) {
        self.tfy_view_theDancer = TFY_DancerAddWidth;
        self.tfy_view_to = @(width);
        return self;
    };
}

- (TFY_DancerViewFloat)addHeight
{
    return ^UIView * (CGFloat height) {
        self.tfy_view_theDancer = TFY_DancerAddHeight;
        self.tfy_view_to = @(height);
        return self;
    };
}

- (TFY_DancerViewSize)addSize
{
    return ^UIView * (CGSize size) {
        self.tfy_view_theDancer = TFY_DancerAddSize;
        self.tfy_view_to = [NSValue valueWithCGSize:size];
        return self;
    };
}




#pragma mark -TRANSITION
- (TFY_DancerViewTransitionTo)transitionTo
{
    return ^UIView * (UIView * to) {
        self.tfy_view_theDancer = TFY_DancerTransition;
        self.tfy_view_to = to;
        self.tfy_view_transition = YES;
        return self;
    };
}

#pragma mark -PATH
- (TFY_DancerViewPath)path
{
    return ^UIView * (UIBezierPath * path) {
        self.tfy_view_to = path;
        self.tfy_view_theDancer = TFY_DancerPath;
        return self;
    };
}


#pragma mark -CONTENT
- (TFY_DancerViewTimeInterval)delay
{
    return ^UIView *(NSTimeInterval delay) {
        self.tfy_view_delay = delay;
        return self;
    };
}

- (TFY_DancerViewRepeat)repeat
{
    return ^UIView *(NSInteger repeat) {
        self.tfy_view_repeat = repeat;
        return self;
    };
}

- (TFY_DancerViewAutoreverses)reverses
{
    return ^UIView *(BOOL reverses) {
        self.tfy_view_reverse = reverses;
        return self;
    };
}

- (TFY_DancerViewTimeInterval)animate
{
    return ^UIView *(NSTimeInterval duration) {
        self.tfy_view_animateDuration = duration;
        [self tfy_startDancer];
        return self;
    };
}


- (void)setCompletion:(TFY_DancerCompletion)completion
{
    objc_setAssociatedObject(self, &TFY_DancerViewCompletionKey, completion, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (TFY_DancerCompletion)completion
{
    return objc_getAssociatedObject(self, &TFY_DancerViewCompletionKey);
}




#pragma mark -动画样式
- (UIView *)easeInOut
{
    self.tfy_view_easeType = TFY_ViewEaseTypeInOut;
    self.tfy_view_options = UIViewAnimationOptionCurveEaseInOut;
    return self;
}

- (UIView *)easeIn
{
    self.tfy_view_easeType = TFY_ViewEaseTypeIn;
    self.tfy_view_options = UIViewAnimationOptionCurveEaseIn;
    return self;
}

- (UIView *)easeOut
{
    self.tfy_view_easeType = TFY_ViewEaseTypeOut;
    self.tfy_view_options = UIViewAnimationOptionCurveEaseOut;
    return self;
}

- (UIView *)easeLiner
{
    self.tfy_view_easeType = TFY_ViewEaseTypeLiner;
    self.tfy_view_options = UIViewAnimationOptionCurveLinear;
    return self;
}



#pragma mark -TRANSITION
- (UIView *)transitionFlipFromLeft
{
    self.tfy_view_options = UIViewAnimationOptionTransitionFlipFromLeft;
    self.tfy_view_theDancer = TFY_DancerTransition;
    return self;
}

- (UIView *)transitionFromRight
{
    self.tfy_view_options = UIViewAnimationOptionTransitionFlipFromRight;
    self.tfy_view_theDancer = TFY_DancerTransition;
    return self;
}

- (UIView *)transitionCurlUp
{
    self.tfy_view_options = UIViewAnimationOptionTransitionCurlUp;
    self.tfy_view_theDancer = TFY_DancerTransition;
   return self;
}

- (UIView *)transitionCurlDown
{
    self.tfy_view_options = UIViewAnimationOptionTransitionCurlDown;
    self.tfy_view_theDancer = TFY_DancerTransition;
   return self;
}

- (UIView *)transitionCrossDissolve
{
    self.tfy_view_options = UIViewAnimationOptionTransitionCrossDissolve;
    self.tfy_view_theDancer = TFY_DancerTransition;
    return self;
}

- (UIView *)transitionFlipFromTop
{
    self.tfy_view_options = UIViewAnimationOptionTransitionFlipFromTop;
    self.tfy_view_theDancer = TFY_DancerTransition;
    return self;
}

- (UIView *)transitionFlipFromBottom
{
    self.tfy_view_options = UIViewAnimationOptionTransitionFlipFromBottom;
    self.tfy_view_theDancer = TFY_DancerTransition;
   return self;
}

#pragma mark -SPRING
- (UIView *)spring
{
    self.tfy_view_spring = YES;
    return self;
}




#pragma mark -THEN
- (UIView *)then
{
    self.tfy_view_delay = self.tfy_view_animateDuration;
    return self;
}




#pragma mark -REMOVE
- (void)removeDancers
{
    [self.layer removeDancers];
}

- (void)reloadDancers
{
    [self.layer reloadDancers];
}



- (void)tfy_startDancer
{
    [self.superview layoutIfNeeded];
    
    switch (self.tfy_view_theDancer)
    {
        case TFY_DancerMakeSize:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakePosition:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makePosition([(NSValue *)self.tfy_view_to CGPointValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makePosition([(NSValue *)self.tfy_view_to CGPointValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makePosition([(NSValue *)self.tfy_view_to CGPointValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makePosition([(NSValue *)self.tfy_view_to CGPointValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makePosition([(NSValue *)self.tfy_view_to CGPointValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makePosition([(NSValue *)self.tfy_view_to CGPointValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makePosition([(NSValue *)self.tfy_view_to CGPointValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makePosition([(NSValue *)self.tfy_view_to CGPointValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeX:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeX([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeX([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeX([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeX([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeX([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeX([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeX([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeX([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeY:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeY([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeY([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeY([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeY([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeY([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeY([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeY([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeY([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeWidth:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeWidth([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeWidth([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeWidth([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeWidth([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeWidth([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeWidth([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeWidth([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeWidth([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeHeight:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeHeight([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeHeight([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeHeight([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeHeight([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeHeight([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeHeight([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeHeight([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeHeight([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeScale:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScale([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScale([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScale([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScale([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScale([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScale([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScale([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScale([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeScaleX:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScaleX([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScaleX([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScaleX([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScaleX([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScaleX([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScaleX([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScaleX([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScaleX([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeScaleY:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScaleY([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScaleY([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScaleY([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScaleY([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScaleY([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScaleY([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeScaleY([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeScaleY([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeRotationX:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationX([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationX([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationX([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationX([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationX([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationX([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationX([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationX([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeRotationY:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationY([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationY([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationY([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationY([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationY([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationY([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationY([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationY([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeRotationZ:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationZ([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationZ([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationZ([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationZ([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationZ([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationZ([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeRotationZ([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeRotationZ([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeBackground:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeBackground(self.tfy_view_to).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeBackground(self.tfy_view_to).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeBackground(self.tfy_view_to).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeBackground(self.tfy_view_to).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeBackground(self.tfy_view_to).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeBackground(self.tfy_view_to).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeBackground(self.tfy_view_to).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeBackground(self.tfy_view_to).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeOpacity:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeOpacity([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeOpacity([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeOpacity([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeOpacity([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeOpacity([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeOpacity([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeOpacity([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeOpacity([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeCornerRadius:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeCornerRadius([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeCornerRadius([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeCornerRadius([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeCornerRadius([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeCornerRadius([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeCornerRadius([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeCornerRadius([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeCornerRadius([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeStrokeEnd:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeStrokeEnd([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeStrokeEnd([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeStrokeEnd([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeStrokeEnd([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeStrokeEnd([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeStrokeEnd([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeStrokeEnd([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeStrokeEnd([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeContent:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeContent(self.tfy_view_from, self.tfy_view_to).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeContent(self.tfy_view_from, self.tfy_view_to).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeContent(self.tfy_view_from, self.tfy_view_to).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeContent(self.tfy_view_from, self.tfy_view_to).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeContent(self.tfy_view_from, self.tfy_view_to).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeContent(self.tfy_view_from, self.tfy_view_to).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeContent(self.tfy_view_from, self.tfy_view_to).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeContent(self.tfy_view_from, self.tfy_view_to).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeBorderWidth:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeBorderWidth([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeBorderWidth([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeBorderWidth([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeBorderWidth([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeBorderWidth([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeBorderWidth([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeBorderWidth([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeBorderWidth([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeShadowColor:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowColor(self.tfy_view_to).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowColor(self.tfy_view_to).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowColor(self.tfy_view_to).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowColor(self.tfy_view_to).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowColor(self.tfy_view_to).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowColor(self.tfy_view_to).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowColor(self.tfy_view_to).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowColor(self.tfy_view_to).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeShadowOffset:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowOffset([(NSValue *)self.tfy_view_to CGSizeValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowOffset([(NSValue *)self.tfy_view_to CGSizeValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowOffset([(NSValue *)self.tfy_view_to CGSizeValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowOffset([(NSValue *)self.tfy_view_to CGSizeValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowOffset([(NSValue *)self.tfy_view_to CGSizeValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowOffset([(NSValue *)self.tfy_view_to CGSizeValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowOffset([(NSValue *)self.tfy_view_to CGSizeValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowOffset([(NSValue *)self.tfy_view_to CGSizeValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeShadowOpacity:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowOpacity([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowOpacity([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowOpacity([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowOpacity([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowOpacity([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowOpacity([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowOpacity([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowOpacity([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMakeShadowRadius:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowRadius([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowRadius([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowRadius([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowRadius([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowRadius([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowRadius([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.makeShadowRadius([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.makeShadowRadius([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerTakeFrame:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeFrame([(NSValue *)self.tfy_view_to CGRectValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeFrame([(NSValue *)self.tfy_view_to CGRectValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeFrame([(NSValue *)self.tfy_view_to CGRectValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeFrame([(NSValue *)self.tfy_view_to CGRectValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeFrame([(NSValue *)self.tfy_view_to CGRectValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeFrame([(NSValue *)self.tfy_view_to CGRectValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeFrame([(NSValue *)self.tfy_view_to CGRectValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeFrame([(NSValue *)self.tfy_view_to CGRectValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerTakeLeading:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeLeading([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeLeading([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeLeading([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeLeading([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeLeading([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeLeading([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeLeading([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeLeading([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerTakeTraing:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeTraing([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeTraing([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeTraing([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeTraing([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeTraing([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeTraing([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeTraing([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeTraing([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerTakeTop:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeTop([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeTop([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeTop([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeTop([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeTop([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeTop([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeTop([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeTop([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerTakeBottom:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeBottom([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeBottom([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeBottom([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeBottom([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeBottom([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeBottom([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeBottom([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeBottom([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerTakeWidth:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeWidth([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeWidth([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeWidth([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeWidth([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeWidth([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeWidth([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeWidth([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeWidth([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerTakeHeight:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeHeight([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeHeight([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeHeight([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeHeight([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeHeight([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeHeight([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeHeight([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeHeight([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerTakeSize:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.takeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.takeSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMoveX:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveX([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveX([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveX([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveX([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveX([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveX([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveX([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveX([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMoveY:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveY([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveY([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveY([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveY([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveY([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveY([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveY([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveY([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMoveXY:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveXY([(NSValue *)self.tfy_view_to CGPointValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveXY([(NSValue *)self.tfy_view_to CGPointValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveXY([(NSValue *)self.tfy_view_to CGPointValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveXY([(NSValue *)self.tfy_view_to CGPointValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveXY([(NSValue *)self.tfy_view_to CGPointValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveXY([(NSValue *)self.tfy_view_to CGPointValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveXY([(NSValue *)self.tfy_view_to CGPointValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveXY([(NSValue *)self.tfy_view_to CGPointValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMoveWidth:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveWidth([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveWidth([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveWidth([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveWidth([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveWidth([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveWidth([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveWidth([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveWidth([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMoveHeight:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveHeight([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveHeight([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveHeight([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveHeight([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveHeight([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveHeight([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveHeight([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveHeight([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerMoveSize:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.moveSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.moveSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerAddLeading:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addLeading([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addLeading([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addLeading([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addLeading([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addLeading([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addLeading([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addLeading([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addLeading([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerAddTraing:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addTraing([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addTraing([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addTraing([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addTraing([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addTraing([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addTraing([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addTraing([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addTraing([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerAddTop:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addTop([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addTop([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addTop([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addTop([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addTop([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addTop([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addTop([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addTop([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerAddBottom:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addBottom([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addBottom([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addBottom([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addBottom([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addBottom([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addBottom([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addBottom([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addBottom([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerAddWidth:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addWidth([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addWidth([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addWidth([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addWidth([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addWidth([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addWidth([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addWidth([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addWidth([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerAddHeight:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addHeight([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addHeight([self.tfy_view_to floatValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addHeight([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addHeight([self.tfy_view_to floatValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addHeight([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addHeight([self.tfy_view_to floatValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addHeight([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addHeight([self.tfy_view_to floatValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerAddSize:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeInOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeIn.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeOut.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.addSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.addSize([(NSValue *)self.tfy_view_to CGSizeValue]).easeLiner.delay(self.tfy_view_delay).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        case TFY_DancerTransition:
        {
            if (!self.tfy_view_options)
            {
                self.tfy_view_options = UIViewAnimationOptionTransitionNone;
            }
            if (self.tfy_view_reverse)
            {
                if (self.tfy_view_options == UIViewAnimationOptionTransitionFlipFromLeft)
                {
                    self.tfy_view_options = UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionTransitionFlipFromLeft;
                }
                else if (self.tfy_view_options == UIViewAnimationOptionTransitionFlipFromRight)
                {
                    self.tfy_view_options = UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionTransitionFlipFromRight;
                }
                else if (self.tfy_view_options == UIViewAnimationOptionTransitionFlipFromTop)
                {
                    self.tfy_view_options = UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionTransitionFlipFromTop;
                }
                else if (self.tfy_view_options == UIViewAnimationOptionTransitionFlipFromBottom)
                {
                    self.tfy_view_options = UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionTransitionFlipFromBottom;
                }
                else if (self.tfy_view_options == UIViewAnimationOptionTransitionCurlUp)
                {
                    self.tfy_view_options = UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionTransitionCurlUp;
                }
                else if (self.tfy_view_options == UIViewAnimationOptionTransitionCurlDown)
                {
                    self.tfy_view_options = UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionTransitionCurlDown;
                }
                else if (self.tfy_view_options == UIViewAnimationOptionTransitionCrossDissolve)
                {
                    self.tfy_view_options = UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionTransitionCrossDissolve;
                }
            }
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                
                if (self.tfy_view_transition)
                {
                    [UIView transitionFromView:self
                                        toView:self.tfy_view_to
                                      duration:self.tfy_view_animateDuration
                                       options:self.tfy_view_options
                                    completion:^(BOOL finished) {
                                        
                                        self.tfy_view_transition = NO;
                                        
                                        if (self.completion)
                                        {
                                            self.completion(TFY_DancerTransition);
                                        }
                                    }];
                }
                else
                {
                    [UIView transitionWithView:self
                                      duration:self.tfy_view_animateDuration
                                       options:self.tfy_view_options
                                    animations:nil
                                    completion:^(BOOL finished) {
                                        
                                        self.tfy_view_transition = NO;
                                        
                                        if (self.completion)
                                        {
                                            self.completion(TFY_DancerTransition);
                                        }
                                        
                                    }];
                }
                
            });
            
        }
            break;
        case TFY_DancerPath:
        {
            if (self.tfy_view_easeType == TFY_ViewEaseTypeInOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.path(self.tfy_view_to).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.path(self.tfy_view_to).easeInOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeIn)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.path(self.tfy_view_to).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.path(self.tfy_view_to).easeIn.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeOut)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.path(self.tfy_view_to).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.path(self.tfy_view_to).easeOut.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
            else if (self.tfy_view_easeType == TFY_ViewEaseTypeLiner)
            {
                if (self.tfy_view_spring)
                {
                    self.layer.path(self.tfy_view_to).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).spring.animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
                else
                {
                    self.layer.path(self.tfy_view_to).easeLiner.delay(self.tfy_view_delay).repeat(self.tfy_view_repeat).reverses(self.tfy_view_reverse).animate(self.tfy_view_animateDuration).completion = self.completion ?: nil;
                }
            }
        }
            break;
        default:
            break;
    }
}


@end
