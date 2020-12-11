//
//  UITableView+TFY_DancerProperty.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TFY_TableViewReloadType) {
    TFY_TableViewReloadTypeVisible = 0,
    TFY_TableViewReloadTypeFixed
};

typedef NS_ENUM(NSInteger, TFY_TableViewTransition) {
    TFY_TableViewTransitionNone = 0,
    TFY_TableViewTransitionContent,
    TFY_TableViewTransitionFrom
};

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (TFY_DancerProperty)

@property (nonatomic, assign, readwrite) UIViewAnimationOptions tfy_tableView_animationType;

@property (nonatomic, assign, readwrite) TFY_TableViewReloadType tfy_tableView_reload;

@property (nonatomic, assign, readwrite) TFY_TableViewTransition tfy_tableView_transition;

@property (nonatomic, assign, readwrite) BOOL tfy_tableView_spring;

@property (nonatomic, assign, readwrite) NSTimeInterval tfy_tableView_itemDuration;

@property (nonatomic, assign, readwrite) NSTimeInterval tfy_tableView_itemDelay;

@property (nonatomic, strong, readwrite) NSIndexPath * tfy_tableView_indexPath;

@property (nonatomic, strong, readwrite) UIView * tfy_tableView_transition_to;

@property (nonatomic, assign, readwrite) UIViewAnimationOptions tfy_tableView_transitionAnimation;

@property (nonatomic, assign, readwrite) BOOL tfy_tableView_isHeaderDancer;

@property (nonatomic, assign, readwrite) BOOL tfy_tableView_isFooterDancer;

@end

NS_ASSUME_NONNULL_END
