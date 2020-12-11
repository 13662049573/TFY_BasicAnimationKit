//
//  CALayer+TFY_Frame.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CALayer (TFY_Frame)

@property (nonatomic, assign) CGFloat dancer_leading; //minX
@property (nonatomic, assign) CGFloat dancer_top; //minY
@property (nonatomic, assign) CGFloat dancer_bottom; //maxY
@property (nonatomic, assign) CGFloat dancer_traing; //maxX
@property (nonatomic, assign) CGFloat dancer_width; //宽
@property (nonatomic, assign) CGFloat dancer_height; //高
@property (nonatomic, assign) CGFloat dancer_centerX; //中心X
@property (nonatomic, assign) CGFloat dancer_centerY; //中心Y

@end

NS_ASSUME_NONNULL_END
