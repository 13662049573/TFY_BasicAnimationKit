//
//  UICollectionView+TFY_DancerProperty.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "UICollectionView+TFY_DancerProperty.h"
#import <objc/runtime.h>

static NSString * const TFY_DancerCollectionViewPropertyAnimationType = @"tfy.collectionView.animationType";
static NSString * const TFY_DancerCollectionViewPropertyReload = @"tfy.collectionView.reload";
static NSString * const TFY_DancerCollectionViewPropertyTransition = @"tfy.collectionView.transition";
static NSString * const TFY_DancerCollectionViewPropertySpring = @"tfy.collectionView.spring";
static NSString * const TFY_DancerCollectionViewPropertyItemDuration = @"tfy.collectionView.itemDuration";
static NSString * const TFY_DancerCollectionViewPropertyItemDelay = @"tfy.collectionView.itemDelay";
static NSString * const TFY_DancerCollectionViewPropertyIndexPath = @"tfy.collectionView.indexPath";
static NSString * const TFY_DancerCollectionViewPropertyTransitionTo = @"tfy.collectionView.transition.to";
static NSString * const TFY_DancerCollectionViewPropertyTransitionAnimation = @"tfy.collectionView.transition.animation";
static NSString * const TFY_DancerCollectionViewPropertyHeader = @"tfy.collectionView.header";
static NSString * const TFY_DancerCollectionViewPropertyFooter = @"tfy.collectionView.footer";


@implementation UICollectionView (TFY_DancerProperty)

- (void)setTfy_collectionView_animationType:(UIViewAnimationOptions)tfy_collectionView_animationType
{
    objc_setAssociatedObject(self, &TFY_DancerCollectionViewPropertyAnimationType, @(tfy_collectionView_animationType), OBJC_ASSOCIATION_ASSIGN);
}

- (UIViewAnimationOptions)tfy_collectionView_animationType
{
    return [objc_getAssociatedObject(self, &TFY_DancerCollectionViewPropertyAnimationType) integerValue];
}




- (void)setTfy_collectionView_reload:(TFY_CollectionReloadType)tfy_collectionView_reload
{
   objc_setAssociatedObject(self, &TFY_DancerCollectionViewPropertyReload, @(tfy_collectionView_reload), OBJC_ASSOCIATION_ASSIGN);
}

- (TFY_CollectionReloadType)tfy_collectionView_reload
{
    return [objc_getAssociatedObject(self, &TFY_DancerCollectionViewPropertyReload) integerValue];
}




- (void)setTfy_collectionView_transition:(TFY_CollectionTransition)tfy_collectionView_transition
{
    objc_setAssociatedObject(self, &TFY_DancerCollectionViewPropertyTransition, @(tfy_collectionView_transition), OBJC_ASSOCIATION_ASSIGN);
}

- (TFY_CollectionTransition)tfy_collectionView_transition
{
    return [objc_getAssociatedObject(self, &TFY_DancerCollectionViewPropertyTransition) integerValue];
}




- (void)setTfy_collectionView_spring:(BOOL)tfy_collectionView_spring
{
  objc_setAssociatedObject(self, &TFY_DancerCollectionViewPropertySpring, @(tfy_collectionView_spring), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)tfy_collectionView_spring
{
   return [objc_getAssociatedObject(self, &TFY_DancerCollectionViewPropertySpring) boolValue];
}





- (void)setTfy_collectionView_itemDuration:(NSTimeInterval)tfy_collectionView_itemDuration
{
    objc_setAssociatedObject(self, &TFY_DancerCollectionViewPropertyItemDuration, [NSString stringWithFormat:@"%f",tfy_collectionView_itemDuration], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSTimeInterval)tfy_collectionView_itemDuration
{
    return [objc_getAssociatedObject(self, &TFY_DancerCollectionViewPropertyItemDuration) doubleValue];
}




- (void)setTfy_collectionView_itemDelay:(NSTimeInterval)tfy_collectionView_itemDelay
{
    objc_setAssociatedObject(self, &TFY_DancerCollectionViewPropertyItemDelay, [NSString stringWithFormat:@"%f",tfy_collectionView_itemDelay], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSTimeInterval)tfy_collectionView_itemDelay
{
    return [objc_getAssociatedObject(self, &TFY_DancerCollectionViewPropertyItemDelay) doubleValue];
}




- (void)setTfy_collectionView_indexPath:(NSIndexPath *)tfy_collectionView_indexPath
{
    objc_setAssociatedObject(self, &TFY_DancerCollectionViewPropertyIndexPath, tfy_collectionView_indexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSIndexPath *)tfy_collectionView_indexPath
{
    return objc_getAssociatedObject(self, &TFY_DancerCollectionViewPropertyIndexPath);
}




- (void)setTfy_collectionView_transition_to:(UIView *)tfy_collectionView_transition_to
{
    objc_setAssociatedObject(self, &TFY_DancerCollectionViewPropertyTransitionTo, tfy_collectionView_transition_to, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)tfy_collectionView_transition_to
{
   return objc_getAssociatedObject(self, &TFY_DancerCollectionViewPropertyTransitionTo);
}




- (void)setTfy_collectionView_transitionAnimation:(UIViewAnimationOptions)tfy_collectionView_transitionAnimation
{
    objc_setAssociatedObject(self, &TFY_DancerCollectionViewPropertyTransitionAnimation, @(tfy_collectionView_transitionAnimation), OBJC_ASSOCIATION_ASSIGN);
}

- (UIViewAnimationOptions)tfy_collectionView_transitionAnimation
{
    return [objc_getAssociatedObject(self, &TFY_DancerCollectionViewPropertyTransitionAnimation) integerValue];
}



- (void)setTfy_collectionView_isHeaderDancer:(BOOL)tfy_collectionView_isHeaderDancer
{
    objc_setAssociatedObject(self, &TFY_DancerCollectionViewPropertyHeader, @(tfy_collectionView_isHeaderDancer), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)tfy_collectionView_isHeaderDancer
{
    return [objc_getAssociatedObject(self, &TFY_DancerCollectionViewPropertyHeader) boolValue];
}





- (void)setTfy_collectionView_isFooterDancer:(BOOL)tfy_collectionView_isFooterDancer
{
    objc_setAssociatedObject(self, &TFY_DancerCollectionViewPropertyFooter, @(tfy_collectionView_isFooterDancer), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)tfy_collectionView_isFooterDancer
{
   return [objc_getAssociatedObject(self, &TFY_DancerCollectionViewPropertyFooter) boolValue];
}


@end
