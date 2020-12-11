//
//  UITableView+TFY_DancerProperty.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "UITableView+TFY_DancerProperty.h"
#import <objc/runtime.h>

static NSString * const TFY_DancerTableViewPropertyAnimationType = @"tfy.tableView.animationType";
static NSString * const TFY_DancerTableViewPropertyReload = @"tfy.tableView.reload";
static NSString * const TFY_DancerTableViewPropertyTransition = @"tfy.tableView.transition";
static NSString * const TFY_DancerTableViewPropertySpring = @"tfy.tableView.spring";
static NSString * const TFY_DancerTableViewPropertyItemDuration = @"tfy.tableView.itemDuration";
static NSString * const TFY_DancerTableViewPropertyItemDelay = @"tfy.tableView.itemDelay";
static NSString * const TFY_DancerTableViewPropertyIndexPath = @"tfy.tableView.indexPath";
static NSString * const TFY_DancerTableViewPropertyTransitionTo = @"tfy.tableView.transition.to";
static NSString * const TFY_DancerTableViewPropertyTransitionAnimation = @"tfy.tableView.transition.animation";
static NSString * const TFY_DancerTableViewPropertyHeader = @"tfy.tableView.header";
static NSString * const TFY_DancerTableViewPropertyFooter = @"tfy.tableView.footer";

@implementation UITableView (TFY_DancerProperty)

- (void)setTfy_tableView_animationType:(UIViewAnimationOptions)tfy_tableView_animationType
{
    objc_setAssociatedObject(self, &TFY_DancerTableViewPropertyAnimationType, @(tfy_tableView_animationType), OBJC_ASSOCIATION_ASSIGN);
}

- (UIViewAnimationOptions)tfy_tableView_animationType
{
    return [objc_getAssociatedObject(self, &TFY_DancerTableViewPropertyAnimationType) integerValue];
}




- (void)setTfy_tableView_reload:(TFY_TableViewReloadType)tfy_tableView_reload
{
    objc_setAssociatedObject(self, &TFY_DancerTableViewPropertyReload, @(tfy_tableView_reload), OBJC_ASSOCIATION_ASSIGN);
}

- (TFY_TableViewReloadType)tfy_tableView_reload
{
    return [objc_getAssociatedObject(self, &TFY_DancerTableViewPropertyReload) integerValue];
}





- (void)setTfy_tableView_transition:(TFY_TableViewTransition)tfy_tableView_transition
{
    objc_setAssociatedObject(self, &TFY_DancerTableViewPropertyTransition, @(tfy_tableView_transition), OBJC_ASSOCIATION_ASSIGN);
}

- (TFY_TableViewTransition)tfy_tableView_transition
{
    return [objc_getAssociatedObject(self, &TFY_DancerTableViewPropertyTransition) integerValue];
}





- (void)setTfy_tableView_spring:(BOOL)tfy_tableView_spring
{
    objc_setAssociatedObject(self, &TFY_DancerTableViewPropertySpring, @(tfy_tableView_spring), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)tfy_tableView_spring
{
    return [objc_getAssociatedObject(self, &TFY_DancerTableViewPropertySpring) boolValue];
}




- (void)setTfy_tableView_itemDuration:(NSTimeInterval)tfy_tableView_itemDuration
{
    objc_setAssociatedObject(self, &TFY_DancerTableViewPropertyItemDuration, [NSString stringWithFormat:@"%f", tfy_tableView_itemDuration], OBJC_ASSOCIATION_ASSIGN);
}

- (NSTimeInterval)tfy_tableView_itemDuration
{
   return [objc_getAssociatedObject(self, &TFY_DancerTableViewPropertyItemDuration) doubleValue];
}




- (void)setTfy_tableView_itemDelay:(NSTimeInterval)tfy_tableView_itemDelay
{
    objc_setAssociatedObject(self, &TFY_DancerTableViewPropertyItemDelay, @(tfy_tableView_itemDelay), OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSTimeInterval)tfy_tableView_itemDelay
{
    return [objc_getAssociatedObject(self, &TFY_DancerTableViewPropertyItemDelay) doubleValue];
}



- (void)setTfy_tableView_indexPath:(NSIndexPath *)tfy_tableView_indexPath
{
   objc_setAssociatedObject(self, &TFY_DancerTableViewPropertyIndexPath, tfy_tableView_indexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSIndexPath *)tfy_tableView_indexPath
{
    return objc_getAssociatedObject(self, &TFY_DancerTableViewPropertyIndexPath);
}





- (void)setTfy_tableView_transition_to:(UIView *)tfy_tableView_transition_to
{
    objc_setAssociatedObject(self, &TFY_DancerTableViewPropertyTransitionTo, tfy_tableView_transition_to, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)tfy_tableView_transition_to
{
    return objc_getAssociatedObject(self, &TFY_DancerTableViewPropertyTransitionTo);
}




- (void)setTfy_tableView_transitionAnimation:(UIViewAnimationOptions)tfy_tableView_transitionAnimation
{
    objc_setAssociatedObject(self, &TFY_DancerTableViewPropertyTransitionAnimation, @(tfy_tableView_transitionAnimation), OBJC_ASSOCIATION_ASSIGN);
}

- (UIViewAnimationOptions)tfy_tableView_transitionAnimation
{
    return [objc_getAssociatedObject(self, &TFY_DancerTableViewPropertyTransitionAnimation) integerValue];
}




- (void)setTfy_tableView_isHeaderDancer:(BOOL)tfy_tableView_isHeaderDancer
{
    objc_setAssociatedObject(self, &TFY_DancerTableViewPropertyHeader, @(tfy_tableView_isHeaderDancer), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)tfy_tableView_isHeaderDancer
{
    return [objc_getAssociatedObject(self, &TFY_DancerTableViewPropertyHeader) boolValue];
}




- (void)setTfy_tableView_isFooterDancer:(BOOL)tfy_tableView_isFooterDancer
{
    objc_setAssociatedObject(self, &TFY_DancerTableViewPropertyFooter, @(tfy_tableView_isFooterDancer), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)tfy_tableView_isFooterDancer
{
   return [objc_getAssociatedObject(self, &TFY_DancerTableViewPropertyFooter) boolValue];
}


@end
