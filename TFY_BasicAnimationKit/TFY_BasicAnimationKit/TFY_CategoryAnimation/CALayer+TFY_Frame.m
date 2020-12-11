//
//  CALayer+TFY_Frame.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "CALayer+TFY_Frame.h"

@implementation CALayer (TFY_Frame)

- (CGFloat)dancer_leading
{
    return self.frame.origin.x;
}

- (CGFloat)dancer_top
{
    return self.frame.origin.y;
}

- (CGFloat)dancer_bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)dancer_traing
{
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)dancer_width
{
    return self.frame.size.width;
}

- (CGFloat)dancer_height
{
    return self.frame.size.height;
}

- (CGFloat)dancer_centerX
{
    return self.frame.origin.x + CGRectGetWidth(self.bounds) / 2.0;
}

- (CGFloat)dancer_centerY
{
    return self.frame.origin.y + CGRectGetHeight(self.bounds) / 2.0;
}

- (void)setDancer_Leading:(CGFloat)dancer_leading
{
    self.frame = CGRectMake(dancer_leading, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (void)setDancer_Top:(CGFloat)dancer_top
{
    self.frame = CGRectMake(self.frame.origin.x, dancer_top, self.frame.size.width, self.frame.size.height);
}

- (void)setDancer_Bottom:(CGFloat)dancer_bottom
{
    self.frame = CGRectMake(self.frame.origin.x, dancer_bottom - self.frame.size.height, self.frame.size.width, self.frame.size.height);
}

- (void)setDancer_Traing:(CGFloat)dancer_traing
{
    self.frame = CGRectMake(dancer_traing - self.frame.size.width, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (void)setDancer_Width:(CGFloat)dancer_width
{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, dancer_width, self.frame.size.height);
}

- (void)setDancer_Height:(CGFloat)dancer_height
{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, dancer_height);
}

- (void)setDancer_CenterX:(CGFloat)dancer_centerX
{
    self.frame = CGRectMake(dancer_centerX - CGRectGetWidth(self.bounds) / 2.0, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (void)setDancer_CenterY:(CGFloat)dancer_centerY
{
    self.frame = CGRectMake(self.frame.origin.y, dancer_centerY - CGRectGetHeight(self.bounds) / 2.0, self.frame.size.width, self.frame.size.height);
}


@end
