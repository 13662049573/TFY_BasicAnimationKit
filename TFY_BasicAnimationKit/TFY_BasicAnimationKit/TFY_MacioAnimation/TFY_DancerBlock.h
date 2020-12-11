//
//  TFY_DancerBlock.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import <UIKit/UIKit.h>

#define TFY_DancerMax NSIntegerMax

typedef NS_ENUM(NSInteger, TFY_Dancer) {
    TFY_DancerMakeSize = 0,
    TFY_DancerMakePosition,
    TFY_DancerMakeX,
    TFY_DancerMakeY,
    TFY_DancerMakeWidth,
    TFY_DancerMakeHeight,
    TFY_DancerMakeScale,
    TFY_DancerMakeScaleX,
    TFY_DancerMakeScaleY,
    TFY_DancerMakeRotationX,
    TFY_DancerMakeRotationY,
    TFY_DancerMakeRotationZ,
    TFY_DancerMakeBackground,
    TFY_DancerMakeOpacity,
    TFY_DancerMakeCornerRadius,
    TFY_DancerMakeStrokeEnd,
    TFY_DancerMakeContent,
    TFY_DancerMakeBorderWidth,
    TFY_DancerMakeShadowColor,
    TFY_DancerMakeShadowOffset,
    TFY_DancerMakeShadowOpacity,
    TFY_DancerMakeShadowRadius,
    
    TFY_DancerTakeFrame,
    TFY_DancerTakeLeading,
    TFY_DancerTakeTraing,
    TFY_DancerTakeTop,
    TFY_DancerTakeBottom,
    TFY_DancerTakeWidth,
    TFY_DancerTakeHeight,
    TFY_DancerTakeSize,
    
    TFY_DancerMoveX,
    TFY_DancerMoveY,
    TFY_DancerMoveXY,
    TFY_DancerMoveWidth,
    TFY_DancerMoveHeight,
    TFY_DancerMoveSize,
    

    TFY_DancerAddLeading,
    TFY_DancerAddTraing,
    TFY_DancerAddTop,
    TFY_DancerAddBottom,
    TFY_DancerAddWidth,
    TFY_DancerAddHeight,
    TFY_DancerAddSize,
    
    TFY_DancerTransition,
    TFY_DancerPath
};

typedef CATransitionSubtype TFY_DancerTransitionDirection;
typedef CATransitionType TFY_DancerTransitionType;

typedef CALayer * (^TFY_DancerLayerRect)(CGRect rect);
typedef CALayer * (^TFY_DancerLayerSize)(CGSize size);
typedef CALayer * (^TFY_DancerLayerPoint)(CGPoint point);
typedef CALayer * (^TFY_DancerLayerFloat)(CGFloat value);
typedef CALayer * (^TFY_DancerLayerColor)(UIColor * color);
typedef CALayer * (^TFY_DancerLayerContent)(id from, id to);

typedef CALayer * (^TFY_DancerLayerPath)(UIBezierPath *path);

typedef CALayer * (^TFY_DancerLayerTimeInterval)(NSTimeInterval timeInterval);
typedef CALayer * (^TFY_DancerLayerRepeat)(NSInteger repeatCount);
typedef CALayer * (^TFY_DancerLayerAutoreverses)(BOOL autoreverses);

typedef CALayer * (^TFY_DancerLayerTransitionDirection)(TFY_DancerTransitionDirection direction);



typedef UIView * (^TFY_DancerViewRect)(CGRect rect);
typedef UIView * (^TFY_DancerViewSize)(CGSize size);
typedef UIView * (^TFY_DancerViewPoint)(CGPoint point);
typedef UIView * (^TFY_DancerViewFloat)(CGFloat value);
typedef UIView * (^TFY_DancerViewColor)(UIColor * color);
typedef UIView * (^TFY_DancerViewContent)(id from, id to);


typedef UIView * (^TFY_DancerViewPath)(UIBezierPath *path);

typedef UIView * (^TFY_DancerViewTimeInterval)(NSTimeInterval timeInterval);
typedef UIView * (^TFY_DancerViewRepeat)(NSInteger repeatCount);
typedef UIView * (^TFY_DancerViewAutoreverses)(BOOL autoreverses);

typedef UIView * (^TFY_DancerViewTransitionTo)(UIView *);


typedef UICollectionView * (^TFY_DancerCollectionViewFloat)(CGFloat value);
typedef UICollectionView * (^TFY_DancerCollectionViewPoint)(CGPoint point);
typedef UICollectionView * (^TFY_DancerCollectionViewTimeInterval)(NSTimeInterval timeInterval);
typedef UICollectionView * (^TFY_DancerCollectionViewVoid)(void);
typedef UICollectionView * (^TFY_DancerCollectionViewFixed)(NSIndexPath * indexPath);
typedef UICollectionView * (^TFY_DancerCollectionViewTo)(UIView * to);
typedef UICollectionView * (^TFY_DancerCollectionViewBool)(BOOL isDancer);


typedef UITableView * (^TFY_DancerTableViewFloat)(CGFloat value);
typedef UITableView * (^TFY_DancerTableViewPoint)(CGPoint point);
typedef UITableView * (^TFY_DancerTableViewTimeInterval)(NSTimeInterval timeInterval);
typedef UITableView * (^TFY_DancerTableViewVoid)(void);
typedef UITableView * (^TFY_DancerTableViewFixed)(NSIndexPath * indexPath);
typedef UITableView * (^TFY_DancerTableViewTo)(UIView * to);
typedef UITableView * (^TFY_DancerTableViewBool)(BOOL isDancer);


typedef void (^TFY_DancerCompletion)(TFY_Dancer animation);
typedef void (^TFY_DancerVoidCompletion)(void);

