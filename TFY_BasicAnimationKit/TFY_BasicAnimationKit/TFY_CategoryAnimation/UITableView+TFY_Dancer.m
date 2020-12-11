//
//  UITableView+TFY_Dancer.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "UITableView+TFY_Dancer.h"
#import "UITableView+TFY_DancerProperty.h"
#import <objc/runtime.h>

static NSString * const TFY_TableViewViewCompletionKey = @"tfy.collection.completion";

CGAffineTransform tableView_to;
NSInteger tableView_totalItemsCount = 0;

@implementation UITableView (TFY_Dancer)

- (TFY_DancerTableViewFloat)makeScale
{
    return ^ UITableView * (CGFloat scale) {
        [self tfy_resetInitParams];
        tableView_to = CGAffineTransformMakeScale(scale, scale);
        return self;
    };
}

- (TFY_DancerTableViewFloat)makeScaleX
{
    return ^ UITableView * (CGFloat scaleX) {
        [self tfy_resetInitParams];
        tableView_to = CGAffineTransformMakeScale(scaleX, 1.0);
        return self;
    };
}

- (TFY_DancerTableViewFloat)makeScaleY
{
    return ^ UITableView * (CGFloat scaleY) {
        [self tfy_resetInitParams];
        tableView_to = CGAffineTransformMakeScale(1.0, scaleY);
        return self;
    };
}

- (TFY_DancerTableViewFloat)makeRotation
{
    return ^ UITableView * (CGFloat rotation) {
        [self tfy_resetInitParams];
        tableView_to = CGAffineTransformMakeRotation(rotation);
        return self;
    };
}



- (TFY_DancerTableViewFloat)moveX
{
    return ^ UITableView * (CGFloat x) {
        [self tfy_resetInitParams];
        tableView_to = CGAffineTransformMakeTranslation(x, 0);
        return self;
    };
}

- (TFY_DancerTableViewFloat)moveY
{
    return ^ UITableView * (CGFloat y) {
        [self tfy_resetInitParams];
        tableView_to = CGAffineTransformMakeTranslation(0, y);
        return self;
    };
}

- (TFY_DancerTableViewPoint)moveXY
{
    return ^ UITableView * (CGPoint xy) {
        [self tfy_resetInitParams];
        tableView_to = CGAffineTransformMakeTranslation(xy.x, xy.y);
        return self;
    };
}



#pragma mark -TRANSITION
- (TFY_DancerTableViewTo)transitionTo
{
    return ^ UITableView * (UIView * to) {
        [self tfy_resetInitParams];
        self.tfy_tableView_transition = TFY_TableViewTransitionFrom;
        self.tfy_tableView_transition_to = to;
        return self;
    };
}


#pragma mark -ITEMDURATION
- (TFY_DancerTableViewTimeInterval)itemDuration
{
    return ^ UITableView * (NSTimeInterval duration) {
        self.tfy_tableView_itemDuration = duration;
        return self;
    };
}

- (TFY_DancerTableViewTimeInterval)itemDelay
{
    return ^ UITableView * (NSTimeInterval delay) {
        self.tfy_tableView_itemDelay = delay;
        return self;
    };
}


- (TFY_DancerTableViewBool)headerDancer
{
    return ^ UITableView * (BOOL dancer) {
        self.tfy_tableView_isHeaderDancer = dancer;
        return self;
    };
}

- (TFY_DancerTableViewBool)footerDancer
{
    return ^ UITableView * (BOOL dancer) {
        self.tfy_tableView_isFooterDancer = dancer;
        return self;
    };
}



#pragma mark -RELOAD
- (TFY_DancerTableViewVoid)reloadDataWithDancer
{
    return ^ UITableView * (void) {
        self.tfy_tableView_reload = TFY_TableViewReloadTypeVisible;
        [self tfy_startDancer];
        return self;
    };
}

- (TFY_DancerTableViewFixed)reloadDataFixedWithDancer
{
    return ^ UITableView * (NSIndexPath * indexPath) {
        self.tfy_tableView_reload = TFY_TableViewReloadTypeFixed;
        self.tfy_tableView_indexPath = indexPath;
        [self tfy_startDancer];
        return self;
    };
}


#pragma mark -ANIMATION
- (UITableView *)easeLiner
{
    self.tfy_tableView_animationType = UIViewAnimationOptionCurveLinear;
    return self;
}

- (UITableView *)easeInOut
{
    self.tfy_tableView_animationType = UIViewAnimationOptionCurveEaseInOut;
    return self;
}

- (UITableView *)easeIn
{
    self.tfy_tableView_animationType = UIViewAnimationOptionCurveEaseIn;
    return self;
}

- (UITableView *)easeOut
{
    self.tfy_tableView_animationType = UIViewAnimationOptionCurveEaseOut;
    return self;
}


#pragma mark -TRANSITION
- (UITableView *)transitionFlipFromLeft
{
    [self tfy_resetInitParams];
    self.tfy_tableView_transition = TFY_TableViewTransitionContent;
    self.tfy_tableView_transitionAnimation = UIViewAnimationOptionTransitionFlipFromLeft;
    return self;
}

- (UITableView *)transitionFromRight
{
    [self tfy_resetInitParams];
    self.tfy_tableView_transition = TFY_TableViewTransitionContent;
    self.tfy_tableView_transitionAnimation = UIViewAnimationOptionTransitionFlipFromRight;
    return self;
}

- (UITableView *)transitionCurlUp
{
    [self tfy_resetInitParams];
    self.tfy_tableView_transition = TFY_TableViewTransitionContent;
    self.tfy_tableView_transitionAnimation = UIViewAnimationOptionTransitionCurlUp;
    return self;
}

- (UITableView *)transitionCurlDown
{
    [self tfy_resetInitParams];
    self.tfy_tableView_transition = TFY_TableViewTransitionContent;
    self.tfy_tableView_transitionAnimation = UIViewAnimationOptionTransitionCurlDown;
    return self;
}

- (UITableView *)transitionCrossDissolve
{
    [self tfy_resetInitParams];
    self.tfy_tableView_transition = TFY_TableViewTransitionContent;
    self.tfy_tableView_transitionAnimation = UIViewAnimationOptionTransitionCrossDissolve;
    return self;
}

- (UITableView *)transitionFlipFromTop
{
    [self tfy_resetInitParams];
    self.tfy_tableView_transition = TFY_TableViewTransitionContent;
    self.tfy_tableView_transitionAnimation = UIViewAnimationOptionTransitionFlipFromTop;
    return self;
}

- (UITableView *)transitionFlipFromBottom
{
    [self tfy_resetInitParams];
    self.tfy_tableView_transition = TFY_TableViewTransitionContent;
    self.tfy_tableView_transitionAnimation = UIViewAnimationOptionTransitionFlipFromBottom;
    return self;
}


#pragma mark -SPRING
- (UITableView *)spring
{
    self.tfy_tableView_spring = YES;
    return self;
}



- (void)setCompletion:(TFY_DancerVoidCompletion)completion
{
    objc_setAssociatedObject(self, &TFY_TableViewViewCompletionKey, completion, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (TFY_DancerVoidCompletion)completion
{
    return objc_getAssociatedObject(self, &TFY_TableViewViewCompletionKey);
}


- (void)tfy_resetInitParams
{
    tableView_to = CGAffineTransformIdentity;
    tableView_totalItemsCount = 0;
}

- (void)tfy_startDancer
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        switch (self.tfy_tableView_reload)
        {
            case TFY_TableViewReloadTypeVisible:
            {
                [self reloadData];
                [self layoutIfNeeded];
                
                NSInteger sections = self.numberOfSections;
                
                for (NSInteger indexSelection = 0; indexSelection < sections; indexSelection ++)
                {
                    UITableViewHeaderFooterView * header = [self headerViewForSection:indexSelection];
                    UITableViewHeaderFooterView * footer = [self footerViewForSection:indexSelection];
                    
                    NSInteger numbers = [self numberOfRowsInSection:indexSelection];
                    
                    NSTimeInterval delay = tableView_totalItemsCount * self.tfy_tableView_itemDelay;
                    
                    if (header && self.tfy_tableView_isHeaderDancer)
                    {
                        switch (self.tfy_tableView_transition)
                        {
                            case TFY_TableViewTransitionNone:
                            {
                                header.transform = tableView_to;
                                
                                if (self.tfy_tableView_spring)
                                {
                                    [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                          delay:delay
                                         usingSpringWithDamping:0.85
                                          initialSpringVelocity:10.0
                                                        options:self.tfy_tableView_animationType
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
                                    [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                          delay:delay
                                                        options:self.tfy_tableView_animationType
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
                                
                            case TFY_TableViewTransitionContent:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionWithView:header
                                                      duration:self.tfy_tableView_itemDuration
                                                       options:self.tfy_tableView_transitionAnimation
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
                                
                            case TFY_TableViewTransitionFrom:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionFromView:header
                                                        toView:self.tfy_tableView_transition_to
                                                      duration:self.tfy_tableView_itemDuration
                                                       options:self.tfy_tableView_transitionAnimation
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
                        
                        
                        tableView_totalItemsCount ++;
                    }
                    
                    
                    for (NSInteger indexItem = 0; indexItem < numbers; indexItem ++)
                    {
                        UITableViewCell * cell = [self cellForRowAtIndexPath:[NSIndexPath indexPathForRow:indexItem inSection:indexSelection]];
                        
                        switch (self.tfy_tableView_transition)
                        {
                            case TFY_TableViewTransitionNone:
                            {
                                cell.transform = tableView_to;
                                
                                if (self.tfy_tableView_spring)
                                {
                                    [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                          delay:delay
                                         usingSpringWithDamping:0.85
                                          initialSpringVelocity:10.0
                                                        options:self.tfy_tableView_animationType
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
                                    [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                          delay:delay
                                                        options:self.tfy_tableView_animationType
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
                                
                            case TFY_TableViewTransitionContent:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionWithView:cell
                                                      duration:self.tfy_tableView_itemDuration
                                                       options:self.tfy_tableView_transitionAnimation
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
                                
                            case TFY_TableViewTransitionFrom:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionFromView:cell
                                                        toView:self.tfy_tableView_transition_to
                                                      duration:self.tfy_tableView_itemDuration
                                                       options:self.tfy_tableView_transitionAnimation
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
                        
                        tableView_totalItemsCount ++;
                    }
                    
                    
                    if (footer && self.tfy_tableView_isFooterDancer)
                    {
                        switch (self.tfy_tableView_transition)
                        {
                            case TFY_TableViewTransitionNone:
                            {
                                footer.transform = tableView_to;
                                
                                if (self.tfy_tableView_spring)
                                {
                                    [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                          delay:delay
                                         usingSpringWithDamping:0.85
                                          initialSpringVelocity:10.0
                                                        options:self.tfy_tableView_animationType
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
                                    [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                          delay:delay
                                                        options:self.tfy_tableView_animationType
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
                                
                            case TFY_TableViewTransitionContent:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionWithView:footer
                                                      duration:self.tfy_tableView_itemDuration
                                                       options:self.tfy_tableView_transitionAnimation
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
                                
                            case TFY_TableViewTransitionFrom:
                            {
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    
                                    [UIView transitionFromView:footer
                                                        toView:self.tfy_tableView_transition_to
                                                      duration:self.tfy_tableView_itemDuration
                                                       options:self.tfy_tableView_transitionAnimation
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
                        
                        tableView_totalItemsCount ++;
                    }
                }
                
            }
                break;
                
                
            case TFY_TableViewReloadTypeFixed:
            {
                [self reloadData];
                [self layoutIfNeeded];
                
                UITableViewHeaderFooterView * header = [self headerViewForSection:self.tfy_tableView_indexPath.section];
                UITableViewHeaderFooterView * footer = [self footerViewForSection:self.tfy_tableView_indexPath.section];
                UITableViewCell * item = [self cellForRowAtIndexPath:self.tfy_tableView_indexPath];
                
                if (self.tfy_tableView_isHeaderDancer || self.tfy_tableView_isFooterDancer)
                {
                    if (self.tfy_tableView_isHeaderDancer && header)
                    {
                        switch (self.tfy_tableView_transition)
                        {
                            case TFY_TableViewTransitionNone:
                            {
                                header.transform = tableView_to;
                                
                                if (self.tfy_tableView_spring)
                                {
                                    [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                          delay:0
                                         usingSpringWithDamping:0.85
                                          initialSpringVelocity:10.0
                                                        options:self.tfy_tableView_animationType
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
                                    [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                          delay:0
                                                        options:self.tfy_tableView_animationType
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
                                
                                
                            case TFY_TableViewTransitionContent:
                            {
                                [UIView transitionWithView:header
                                                  duration:self.tfy_tableView_itemDuration
                                                   options:self.tfy_tableView_transitionAnimation
                                                animations:nil
                                                completion:^(BOOL finished) {
                                                    
                                                    if (self.completion)
                                                    {
                                                        self.completion();
                                                    }
                                                }];
                            }
                                break;
                                
                                
                            case TFY_TableViewTransitionFrom:
                            {
                                [UIView transitionFromView:header
                                                    toView:self.tfy_tableView_transition_to
                                                  duration:self.tfy_tableView_itemDuration
                                                   options:self.tfy_tableView_transitionAnimation
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
                    
                    if (self.tfy_tableView_isFooterDancer && footer)
                    {
                        switch (self.tfy_tableView_transition)
                        {
                            case TFY_TableViewTransitionNone:
                            {
                                footer.transform = tableView_to;
                                
                                if (self.tfy_tableView_spring)
                                {
                                    [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                          delay:0
                                         usingSpringWithDamping:0.85
                                          initialSpringVelocity:10.0
                                                        options:self.tfy_tableView_animationType
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
                                    [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                          delay:0
                                                        options:self.tfy_tableView_animationType
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
                                
                                
                            case TFY_TableViewTransitionContent:
                            {
                                [UIView transitionWithView:footer
                                                  duration:self.tfy_tableView_itemDuration
                                                   options:self.tfy_tableView_transitionAnimation
                                                animations:nil
                                                completion:^(BOOL finished) {
                                                    
                                                    if (self.completion)
                                                    {
                                                        self.completion();
                                                    }
                                                }];
                            }
                                break;
                                
                                
                            case TFY_TableViewTransitionFrom:
                            {
                                [UIView transitionFromView:footer
                                                    toView:self.tfy_tableView_transition_to
                                                  duration:self.tfy_tableView_itemDuration
                                                   options:self.tfy_tableView_transitionAnimation
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
                    switch (self.tfy_tableView_transition)
                    {
                        case TFY_TableViewTransitionNone:
                        {
                            item.transform = tableView_to;
                            
                            if (self.tfy_tableView_spring)
                            {
                                [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                      delay:0
                                     usingSpringWithDamping:0.85
                                      initialSpringVelocity:10.0
                                                    options:self.tfy_tableView_animationType
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
                                [UIView animateWithDuration:self.tfy_tableView_itemDuration
                                                      delay:0
                                                    options:self.tfy_tableView_animationType
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
                            
                            
                        case TFY_TableViewTransitionContent:
                        {
                            [UIView transitionWithView:item
                                              duration:self.tfy_tableView_itemDuration
                                               options:self.tfy_tableView_transitionAnimation
                                            animations:nil
                                            completion:^(BOOL finished) {
                                                
                                                if (self.completion)
                                                {
                                                    self.completion();
                                                }
                                            }];
                        }
                            break;
                            
                            
                        case TFY_TableViewTransitionFrom:
                        {
                            [UIView transitionFromView:item
                                                toView:self.tfy_tableView_transition_to
                                              duration:self.tfy_tableView_itemDuration
                                               options:self.tfy_tableView_transitionAnimation
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
                
            default:
                break;
        }
        
    });

}


@end
