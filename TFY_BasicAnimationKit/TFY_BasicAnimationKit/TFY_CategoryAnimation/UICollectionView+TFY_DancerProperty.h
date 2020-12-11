//
//  UICollectionView+TFY_DancerProperty.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TFY_CollectionReloadType) {
    TFY_CollectionReloadTypeVisible = 0,
    TFY_CollectionReloadTypeFixed
};

typedef NS_ENUM(NSInteger, TFY_CollectionTransition) {
    TFY_CollectionTransitionNone = 0,
    TFY_CollectionTransitionContent,
    TFY_CollectionTransitionFrom
};


NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (TFY_DancerProperty)

@property (nonatomic, assign, readwrite) UIViewAnimationOptions tfy_collectionView_animationType;

@property (nonatomic, assign, readwrite) TFY_CollectionReloadType tfy_collectionView_reload;

@property (nonatomic, assign, readwrite) TFY_CollectionTransition tfy_collectionView_transition;

@property (nonatomic, assign, readwrite) BOOL tfy_collectionView_spring;

@property (nonatomic, assign, readwrite) NSTimeInterval tfy_collectionView_itemDuration;

@property (nonatomic, assign, readwrite) NSTimeInterval tfy_collectionView_itemDelay;

@property (nonatomic, strong, readwrite) NSIndexPath * tfy_collectionView_indexPath;

@property (nonatomic, strong, readwrite) UIView * tfy_collectionView_transition_to;

@property (nonatomic, assign, readwrite) UIViewAnimationOptions tfy_collectionView_transitionAnimation;

@property (nonatomic, assign, readwrite) BOOL tfy_collectionView_isHeaderDancer;

@property (nonatomic, assign, readwrite) BOOL tfy_collectionView_isFooterDancer;

@end

NS_ASSUME_NONNULL_END
