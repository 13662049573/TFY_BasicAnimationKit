//
//  UICollectionView+TFY_Dancer.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "UICollectionView+TFY_Dancer.h"
#import "UICollectionView+TFY_DancerProperty.h"
#import <objc/runtime.h>

static NSString * const TFY_CollecitonViewCompletionKey = @"tfy.collection.completion";

CGAffineTransform collectionView_to;
NSInteger collectionView_totalItemsCount = 0;

@implementation UICollectionView (TFY_Dancer)

#pragma mark -MAKE
- (TFY_DancerCollectionViewFloat)makeScale
{
    return ^ UICollectionView * (CGFloat scale) {
        [self tfy_resetInitParams];
        collectionView_to = CGAffineTransformMakeScale(scale, scale);
        return self;
    };
}

- (TFY_DancerCollectionViewFloat)makeScaleX
{
    return ^ UICollectionView * (CGFloat scaleX) {
        [self tfy_resetInitParams];
        collectionView_to = CGAffineTransformMakeScale(scaleX, 1.0);
        return self;
    };
}

- (TFY_DancerCollectionViewFloat)makeScaleY
{
    return ^ UICollectionView * (CGFloat scaleY) {
        [self tfy_resetInitParams];
        collectionView_to = CGAffineTransformMakeScale(1.0, scaleY);
        return self;
    };
}

- (TFY_DancerCollectionViewFloat)makeRotation
{
    return ^ UICollectionView * (CGFloat rotation) {
        [self tfy_resetInitParams];
        collectionView_to = CGAffineTransformMakeRotation(rotation);
        return self;
    };
}





- (TFY_DancerCollectionViewFloat)moveX
{
    return ^ UICollectionView * (CGFloat x) {
        [self tfy_resetInitParams];
        collectionView_to = CGAffineTransformMakeTranslation(x, 0);
        return self;
    };
}

- (TFY_DancerCollectionViewFloat)moveY
{
    return ^ UICollectionView * (CGFloat y) {
        [self tfy_resetInitParams];
        collectionView_to = CGAffineTransformMakeTranslation(0, y);
        return self;
    };
}

- (TFY_DancerCollectionViewPoint)moveXY
{
    return ^ UICollectionView * (CGPoint xy) {
        [self tfy_resetInitParams];
        collectionView_to = CGAffineTransformMakeTranslation(xy.x, xy.y);
        return self;
    };
}



#pragma mark -TRANSITION
- (TFY_DancerCollectionViewTo)transitionTo
{
    return ^ UICollectionView * (UIView * to) {
        [self tfy_resetInitParams];
        self.tfy_collectionView_transition = TFY_CollectionTransitionFrom;
        self.tfy_collectionView_transition_to = to;
        return self;
    };
}


#pragma mark -ITEMDURATION
- (TFY_DancerCollectionViewTimeInterval)itemDuration
{
    return ^ UICollectionView * (NSTimeInterval duration) {
        self.tfy_collectionView_itemDuration = duration;
        return self;
    };
}

- (TFY_DancerCollectionViewTimeInterval)itemDelay
{
    return ^ UICollectionView * (NSTimeInterval delay) {
        self.tfy_collectionView_itemDelay = delay;
        return self;
    };
}


- (TFY_DancerCollectionViewBool)headerDancer
{
    return ^ UICollectionView * (BOOL dancer) {
        self.tfy_collectionView_isHeaderDancer = dancer;
        return self;
    };
}

- (TFY_DancerCollectionViewBool)footerDancer
{
    return ^ UICollectionView * (BOOL dancer) {
        self.tfy_collectionView_isFooterDancer = dancer;
        return self;
    };
}

#pragma mark -RELOAD
- (TFY_DancerCollectionViewVoid)reloadDataWithDancer
{
    return ^ UICollectionView * (void) {
        self.tfy_collectionView_reload = TFY_CollectionReloadTypeVisible;
        [self tfy_startDancer];
        return self;
    };
}

- (TFY_DancerCollectionViewFixed)reloadDataFixedWithDancer
{
    return ^ UICollectionView * (NSIndexPath * indexPath) {
        self.tfy_collectionView_reload = TFY_CollectionReloadTypeFixed;
        self.tfy_collectionView_indexPath = indexPath;
        [self tfy_startDancer];
        return self;
    };
}


#pragma mark -ANIMATION
- (UICollectionView *)easeLiner
{
    self.tfy_collectionView_animationType = UIViewAnimationOptionCurveLinear;
    return self;
}

- (UICollectionView *)easeInOut
{
    self.tfy_collectionView_animationType = UIViewAnimationOptionCurveEaseInOut;
    return self;
}

- (UICollectionView *)easeIn
{
    self.tfy_collectionView_animationType = UIViewAnimationOptionCurveEaseIn;
    return self;
}

- (UICollectionView *)easeOut
{
    self.tfy_collectionView_animationType = UIViewAnimationOptionCurveEaseOut;
    return self;
}


#pragma mark -TRANSITION
- (UICollectionView *)transitionFlipFromLeft
{
    [self tfy_resetInitParams];
    self.tfy_collectionView_transition = TFY_CollectionTransitionContent;
    self.tfy_collectionView_transitionAnimation = UIViewAnimationOptionTransitionFlipFromLeft;
    return self;
}

- (UICollectionView *)transitionFromRight
{
    [self tfy_resetInitParams];
    self.tfy_collectionView_transition = TFY_CollectionTransitionContent;
    self.tfy_collectionView_transitionAnimation = UIViewAnimationOptionTransitionFlipFromRight;
    return self;
}

- (UICollectionView *)transitionCurlUp
{
    [self tfy_resetInitParams];
    self.tfy_collectionView_transition = TFY_CollectionTransitionContent;
    self.tfy_collectionView_transitionAnimation = UIViewAnimationOptionTransitionCurlUp;
    return self;
}

- (UICollectionView *)transitionCurlDown
{
    [self tfy_resetInitParams];
    self.tfy_collectionView_transition = TFY_CollectionTransitionContent;
    self.tfy_collectionView_transitionAnimation = UIViewAnimationOptionTransitionCurlDown;
    return self;
}

- (UICollectionView *)transitionCrossDissolve
{
    [self tfy_resetInitParams];
    self.tfy_collectionView_transition = TFY_CollectionTransitionContent;
    self.tfy_collectionView_transitionAnimation = UIViewAnimationOptionTransitionCrossDissolve;
    return self;
}

- (UICollectionView *)transitionFlipFromTop
{
    [self tfy_resetInitParams];
    self.tfy_collectionView_transition = TFY_CollectionTransitionContent;
    self.tfy_collectionView_transitionAnimation = UIViewAnimationOptionTransitionFlipFromTop;
    return self;
}

- (UICollectionView *)transitionFlipFromBottom
{
    [self tfy_resetInitParams];
    self.tfy_collectionView_transition = TFY_CollectionTransitionContent;
    self.tfy_collectionView_transitionAnimation = UIViewAnimationOptionTransitionFlipFromBottom;
    return self;
}


#pragma mark -SPRING
- (UICollectionView *)spring
{
    self.tfy_collectionView_spring = YES;
    return self;
}



- (void)setCompletion:(TFY_DancerVoidCompletion)completion
{
    objc_setAssociatedObject(self, &TFY_CollecitonViewCompletionKey, completion, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (TFY_DancerVoidCompletion)completion
{
    return objc_getAssociatedObject(self, &TFY_CollecitonViewCompletionKey);
}



- (void)tfy_resetInitParams
{
    collectionView_to = CGAffineTransformIdentity;
    collectionView_totalItemsCount = 0;
}

- (void)tfy_startDancer
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        switch (self.tfy_collectionView_reload)
        {
            case TFY_CollectionReloadTypeVisible:
            {
                [self reloadData];
                [self layoutIfNeeded];
                
                NSInteger selections = self.numberOfSections;
                
                for (NSInteger indexSelection = 0; indexSelection < selections; indexSelection ++)
                {
                    UICollectionReusableView * header = [self supplementaryViewForElementKind:UICollectionElementKindSectionHeader atIndexPath:[NSIndexPath indexPathForItem:0 inSection:indexSelection]];
                    
                    UICollectionReusableView * footer = [self supplementaryViewForElementKind:UICollectionElementKindSectionFooter atIndexPath:[NSIndexPath indexPathForItem:0 inSection:indexSelection]];
                    
                    NSInteger numbers = [self numberOfItemsInSection:indexSelection];
                    
                    NSTimeInterval delay = collectionView_totalItemsCount * self.tfy_collectionView_itemDelay;
                    
                    if (header && self.tfy_collectionView_isHeaderDancer)
                    {
                        
                        switch (self.tfy_collectionView_transition)
                        {
                            case TFY_CollectionTransitionNone:
                            {
                                header.transform = collectionView_to;
                                
                                if (self.tfy_collectionView_spring)
                                {
                                    [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                          delay:delay
                                         usingSpringWithDamping:0.85
                                          initialSpringVelocity:10.0
                                                        options:self.tfy_collectionView_animationType
                                                     animations:^{
                                                         
                                                         header.transform = CGAffineTransformIdentity;
                                                         
                                                     }
                                                     completion:^(BOOL finished) {
                                                         
                                                         if (self.completion)
                                                         {
                                                             self.completion();
                                                         }
                                                         
                                                     }];
                                }
                                else
                                {
                                    [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                          delay:delay
                                                        options:self.tfy_collectionView_animationType
                                                     animations:^{
                                                         
                                                         header.transform = CGAffineTransformIdentity;
                                                         
                                                     }
                                                     completion:^(BOOL finished) {
                                                         
                                                         if (self.completion)
                                                         {
                                                             self.completion();
                                                         }
                                                         
                                                     }];
                                }
                                
                            }
                                break;
                                
                            case TFY_CollectionTransitionContent:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionWithView:header
                                                      duration:self.tfy_collectionView_itemDuration
                                                       options:self.tfy_collectionView_transitionAnimation
                                                    animations:nil
                                                    completion:^(BOOL finished) {
                                                        
                                                        if (self.completion)
                                                        {
                                                            self.completion();
                                                        }
                                                    }];
                                });
                            }
                                break;
                                
                            case TFY_CollectionTransitionFrom:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionFromView:header
                                                        toView:self.tfy_collectionView_transition_to
                                                      duration:self.tfy_collectionView_itemDuration
                                                       options:self.tfy_collectionView_transitionAnimation
                                                    completion:^(BOOL finished) {
                                                        
                                                        if (self.completion)
                                                        {
                                                            self.completion();
                                                        }
                                                        
                                                    }];
                                });
                            }
                                break;
                                
                            default:
                                break;
                        }
                        
                        
                        collectionView_totalItemsCount ++;
                    }
                    
                    for (NSInteger indexItem = 0; indexItem < numbers; indexItem ++)
                    {
                        UICollectionViewCell * cell = [self cellForItemAtIndexPath:[NSIndexPath indexPathForItem:indexItem inSection:indexSelection]];
                        
                        switch (self.tfy_collectionView_transition)
                        {
                            case TFY_CollectionTransitionNone:
                            {
                                cell.transform = collectionView_to;
                                
                                if (self.tfy_collectionView_spring)
                                {
                                    [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                          delay:delay
                                         usingSpringWithDamping:0.85
                                          initialSpringVelocity:10.0
                                                        options:self.tfy_collectionView_animationType
                                                     animations:^{
                                                         
                                                         cell.transform = CGAffineTransformIdentity;
                                                         
                                                     }
                                                     completion:^(BOOL finished) {
                                                         
                                                         if (self.completion)
                                                         {
                                                             self.completion();
                                                         }
                                                         
                                                     }];
                                }
                                else
                                {
                                    [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                          delay:delay
                                                        options:self.tfy_collectionView_animationType
                                                     animations:^{
                                                         
                                                         cell.transform = CGAffineTransformIdentity;
                                                         
                                                     }
                                                     completion:^(BOOL finished) {
                                                         
                                                         if (self.completion)
                                                         {
                                                             self.completion();
                                                         }
                                                         
                                                     }];
                                }
                                
                            }
                                break;
                                
                            case TFY_CollectionTransitionContent:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionWithView:cell
                                                      duration:self.tfy_collectionView_itemDuration
                                                       options:self.tfy_collectionView_transitionAnimation
                                                    animations:nil
                                                    completion:^(BOOL finished) {
                                                        
                                                        if (self.completion)
                                                        {
                                                            self.completion();
                                                        }
                                                    }];
                                });
                            }
                                break;
                                
                            case TFY_CollectionTransitionFrom:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionFromView:cell
                                                        toView:self.tfy_collectionView_transition_to
                                                      duration:self.tfy_collectionView_itemDuration
                                                       options:self.tfy_collectionView_transitionAnimation
                                                    completion:^(BOOL finished) {
                                                        
                                                        if (self.completion)
                                                        {
                                                            self.completion();
                                                        }
                                                        
                                                    }];
                                });
                            }
                                break;
                                
                            default:
                                break;
                        }
                        
                        collectionView_totalItemsCount ++;
                    }
                    
                    
                    if (footer && self.tfy_collectionView_isFooterDancer)
                    {
                        switch (self.tfy_collectionView_transition)
                        {
                            case TFY_CollectionTransitionNone:
                            {
                                footer.transform = collectionView_to;
                                
                                if (self.tfy_collectionView_spring)
                                {
                                    [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                          delay:delay
                                         usingSpringWithDamping:0.85
                                          initialSpringVelocity:10.0
                                                        options:self.tfy_collectionView_animationType
                                                     animations:^{
                                                         
                                                         footer.transform = CGAffineTransformIdentity;
                                                         
                                                     }
                                                     completion:^(BOOL finished) {
                                                         
                                                         if (self.completion)
                                                         {
                                                             self.completion();
                                                         }
                                                         
                                                     }];
                                }
                                else
                                {
                                    [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                          delay:delay
                                                        options:self.tfy_collectionView_animationType
                                                     animations:^{
                                                         
                                                         footer.transform = CGAffineTransformIdentity;
                                                         
                                                     }
                                                     completion:^(BOOL finished) {
                                                         
                                                         if (self.completion)
                                                         {
                                                             self.completion();
                                                         }
                                                         
                                                     }];
                                }
                                
                            }
                                break;
                                
                            case TFY_CollectionTransitionContent:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionWithView:footer
                                                      duration:self.tfy_collectionView_itemDuration
                                                       options:self.tfy_collectionView_transitionAnimation
                                                    animations:nil
                                                    completion:^(BOOL finished) {
                                                        
                                                        if (self.completion)
                                                        {
                                                            self.completion();
                                                        }
                                                    }];
                                });
                            }
                                break;
                                
                            case TFY_CollectionTransitionFrom:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionFromView:footer
                                                        toView:self.tfy_collectionView_transition_to
                                                      duration:self.tfy_collectionView_itemDuration
                                                       options:self.tfy_collectionView_transitionAnimation
                                                    completion:^(BOOL finished) {
                                                        
                                                        if (self.completion)
                                                        {
                                                            self.completion();
                                                        }
                                                        
                                                    }];
                                });
                            }
                                break;
                                
                            default:
                                break;
                        }
                        
                        collectionView_totalItemsCount ++;
                    }
                    
                }
            }
                break;
                
            default:
            {
                [self reloadData];
                [self layoutIfNeeded];
                
                UICollectionReusableView * header = [self supplementaryViewForElementKind:UICollectionElementKindSectionHeader atIndexPath:self.tfy_collectionView_indexPath];
                
                UICollectionReusableView * footer = [self supplementaryViewForElementKind:UICollectionElementKindSectionFooter atIndexPath:self.tfy_collectionView_indexPath];
                
                UICollectionViewCell * item = [self cellForItemAtIndexPath:self.tfy_collectionView_indexPath];
                
                if (self.tfy_collectionView_isHeaderDancer || self.tfy_collectionView_isFooterDancer)
                {
                    if (self.tfy_collectionView_isHeaderDancer && header)
                    {
                        switch (self.tfy_collectionView_transition)
                        {
                            case TFY_CollectionTransitionNone:
                            {
                                header.transform = collectionView_to;
                                
                                if (self.tfy_collectionView_spring)
                                {
                                    [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                          delay:0
                                         usingSpringWithDamping:0.85
                                          initialSpringVelocity:10.0
                                                        options:self.tfy_collectionView_animationType
                                                     animations:^{
                                                         
                                                         header.transform = CGAffineTransformIdentity;
                                                         
                                                     }
                                                     completion:^(BOOL finished) {
                                                         
                                                         if (self.completion)
                                                         {
                                                             self.completion();
                                                         }
                                                         
                                                     }];
                                }
                                else
                                {
                                    [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                          delay:0
                                                        options:self.tfy_collectionView_animationType
                                                     animations:^{
                                                         
                                                         header.transform = CGAffineTransformIdentity;
                                                         
                                                     }
                                                     completion:^(BOOL finished) {
                                                         
                                                         if (self.completion)
                                                         {
                                                             self.completion();
                                                         }
                                                         
                                                     }];
                                }
                            }
                                break;
                                
                                
                            case TFY_CollectionTransitionContent:
                            {
                                [UIView transitionWithView:header
                                                  duration:self.tfy_collectionView_itemDuration
                                                   options:self.tfy_collectionView_transitionAnimation
                                                animations:nil
                                                completion:^(BOOL finished) {
                                                    
                                                    if (self.completion)
                                                    {
                                                        self.completion();
                                                    }
                                                }];
                            }
                                break;
                                
                                
                            case TFY_CollectionTransitionFrom:
                            {
                                [UIView transitionFromView:header
                                                    toView:self.tfy_collectionView_transition_to
                                                  duration:self.tfy_collectionView_itemDuration
                                                   options:self.tfy_collectionView_transitionAnimation
                                                completion:^(BOOL finished) {
                                                    
                                                    if (self.completion)
                                                    {
                                                        self.completion();
                                                    }
                                                    
                                                }];
                            }
                                break;
                                
                            default:
                                break;
                        }
                    }
                    
                    if (self.tfy_collectionView_isFooterDancer && footer)
                    {
                        switch (self.tfy_collectionView_transition)
                        {
                            case TFY_CollectionTransitionNone:
                            {
                                footer.transform = collectionView_to;
                                
                                if (self.tfy_collectionView_spring)
                                {
                                    [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                          delay:0
                                         usingSpringWithDamping:0.85
                                          initialSpringVelocity:10.0
                                                        options:self.tfy_collectionView_animationType
                                                     animations:^{
                                                         
                                                         footer.transform = CGAffineTransformIdentity;
                                                         
                                                     }
                                                     completion:^(BOOL finished) {
                                                         
                                                         if (self.completion)
                                                         {
                                                             self.completion();
                                                         }
                                                         
                                                     }];
                                }
                                else
                                {
                                    [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                          delay:0
                                                        options:self.tfy_collectionView_animationType
                                                     animations:^{
                                                         
                                                         footer.transform = CGAffineTransformIdentity;
                                                         
                                                     }
                                                     completion:^(BOOL finished) {
                                                         
                                                         if (self.completion)
                                                         {
                                                             self.completion();
                                                         }
                                                         
                                                     }];
                                }
                            }
                                break;
                                
                                
                            case TFY_CollectionTransitionContent:
                            {
                                [UIView transitionWithView:footer
                                                  duration:self.tfy_collectionView_itemDuration
                                                   options:self.tfy_collectionView_transitionAnimation
                                                animations:nil
                                                completion:^(BOOL finished) {
                                                    
                                                    if (self.completion)
                                                    {
                                                        self.completion();
                                                    }
                                                }];
                            }
                                break;
                                
                                
                            case TFY_CollectionTransitionFrom:
                            {
                                [UIView transitionFromView:footer
                                                    toView:self.tfy_collectionView_transition_to
                                                  duration:self.tfy_collectionView_itemDuration
                                                   options:self.tfy_collectionView_animationType
                                                completion:^(BOOL finished) {
                                                    
                                                    if (self.completion)
                                                    {
                                                        self.completion();
                                                    }
                                                    
                                                }];
                            }
                                break;
                                
                            default:
                                break;
                        }
                    }
                }
                else
                {
                    switch (self.tfy_collectionView_transition)
                    {
                        case TFY_CollectionTransitionNone:
                        {
                            item.transform = collectionView_to;
                            
                            if (self.tfy_collectionView_spring)
                            {
                                [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                      delay:0
                                     usingSpringWithDamping:0.85
                                      initialSpringVelocity:10.0
                                                    options:self.tfy_collectionView_animationType
                                                 animations:^{
                                                     
                                                     item.transform = CGAffineTransformIdentity;
                                                     
                                                 }
                                                 completion:^(BOOL finished) {
                                                     
                                                     if (self.completion)
                                                     {
                                                         self.completion();
                                                     }
                                                     
                                                 }];
                            }
                            else
                            {
                                [UIView animateWithDuration:self.tfy_collectionView_itemDuration
                                                      delay:0
                                                    options:self.tfy_collectionView_animationType
                                                 animations:^{
                                                     
                                                     item.transform = CGAffineTransformIdentity;
                                                     
                                                 }
                                                 completion:^(BOOL finished) {
                                                     
                                                     if (self.completion)
                                                     {
                                                         self.completion();
                                                     }
                                                     
                                                 }];
                            }
                        }
                            break;
                            
                            
                        case TFY_CollectionTransitionContent:
                        {
                            [UIView transitionWithView:item
                                              duration:self.tfy_collectionView_itemDuration
                                               options:self.tfy_collectionView_transitionAnimation
                                            animations:nil
                                            completion:^(BOOL finished) {
                                                
                                                if (self.completion)
                                                {
                                                    self.completion();
                                                }
                                            }];
                        }
                            break;
                            
                            
                        case TFY_CollectionTransitionFrom:
                        {
                            [UIView transitionFromView:item
                                                toView:self.tfy_collectionView_transition_to
                                              duration:self.tfy_collectionView_itemDuration
                                               options:self.tfy_collectionView_transitionAnimation
                                            completion:^(BOOL finished) {
                                                
                                                if (self.completion)
                                                {
                                                    self.completion();
                                                }
                                                
                                            }];
                        }
                            break;
                            
                        default:
                            break;
                    }
                    
                }
                
            }
                break;
        }
        
    });
}


@end
