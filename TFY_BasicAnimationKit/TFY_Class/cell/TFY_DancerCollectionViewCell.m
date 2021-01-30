//
//  TFY_DancerCollectionViewCell.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "TFY_DancerCollectionViewCell.h"

@interface TFY_DancerCollectionViewCell ()
@property (nonatomic, strong) UIView * testView;
@property (nonatomic, strong) UIImageView * contenImageView;

@property (nonatomic, strong) UIBezierPath * bezierPath;
@property (nonatomic, strong) CAShapeLayer * shapeLayer;

@end

@implementation TFY_DancerCollectionViewCell

+ (CGSize)itemSize
{
    return CGSizeMake(floor((TFY_Width_W() - 20 * 2 - 10 * 2) / 3), floor((TFY_Width_W() - 20 * 2 - 10 * 2)) / 3);
}

+ (CGSize)itemSizePlus
{
    return CGSizeMake(TFY_Width_W() - 20 * 2, TFY_Width_W() - 20 * 2);
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.contentView.layer.borderColor = [UIColor.blackColor colorWithAlphaComponent:0.5].CGColor;
        self.contentView.layer.borderWidth = 2;
        
        [self.contentView addSubview:self.testView];
        [self.contentView addSubview:self.contenImageView];
        
        self.testView
        .tfy_Center(0, 0)
        .tfy_size(50, 50);
       
        self.contenImageView
        .tfy_SizeEqualView(self.testView);
        
        [self.contentView.layer addSublayer:self.shapeLayer];
        
    }
    return self;
}

- (void)setDancer:(TFY_Dancer)dancer {
    _dancer = dancer;
    switch (_dancer)
    {
        case TFY_DancerMakeSize:
        {
            self.testView.makeSize(CGSizeMake(80, 80)).repeat(TFY_DancerMax).reverses(YES).animate(1);

        }
            break;
        case TFY_DancerMakePosition:
        {
            self.testView.makePosition(CGPointMake(25, 25)).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeX:
        {
            self.testView.makeX(80).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeY:
        {
            self.testView.makeY(100).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeWidth:
        {
            self.testView.makeWidth(80).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeHeight:
        {
            self.testView.makeHeight(80).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeScale:
        {
            self.testView.makeScale(0.5).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeScaleX:
        {
            self.testView.makeScaleX(0.5).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeScaleY:
        {
           self.testView.makeScaleY(0.5).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeRotationX:
        {
            self.testView.makeRotationX(M_PI_2).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeRotationY:
        {
            self.testView.makeRotationY(M_PI_2).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeRotationZ:
        {
            self.testView.makeRotationZ(M_PI_2).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeBackground:
        {
            self.testView.makeBackground(UIColor.blueColor).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeOpacity:
        {
            self.testView.makeOpacity(0.2).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeCornerRadius:
        {
            self.testView.makeCornerRadius(8).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMakeBorderWidth:
        {
            self.testView.makeBorderWidth(5).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
            
            
            
        case TFY_DancerTakeFrame:
        {
            self.testView.takeFrame(CGRectMake(20, 20, 30, 30)).reverses(YES).animate(1);
        }
            break;
       case TFY_DancerTakeLeading:
        {
            self.testView.takeLeading(0).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerTakeTraing:
        {
            self.testView.takeTraing(50).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerTakeTop:
        {
            self.testView.takeTop(0).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerTakeBottom:
        {
            self.testView.takeBottom(50).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerTakeWidth:
        {
            self.testView.takeWidth(200).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerTakeHeight:
        {
            self.testView.takeHeight(80).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerTakeSize:
        {
            self.testView.takeSize(CGSizeMake(80, 80)).reverses(YES).animate(1);
        }
            break;
            
          
        case TFY_DancerMoveX:
        {
            self.testView.moveX(-20).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMoveY:
        {
            self.testView.moveY(-20).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMoveXY:
        {
            self.testView.moveXY(CGPointMake(-20, -20)).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMoveWidth:
        {
            self.testView.moveWidth(-20).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMoveHeight:
        {
           self.testView.moveHeight(-20).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerMoveSize:
        {
            self.testView.moveSize(CGSizeMake(-20, -20)).repeat(TFY_DancerMax).reverses(YES).animate(1);
        }
            break;
            
            
        case TFY_DancerAddLeading:
        {
            self.testView.addLeading(-20).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerAddTraing:
        {
            self.testView.addTraing(-20).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerAddTop:
        {
            self.testView.addTop(-20).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerAddBottom:
        {
            self.testView.addBottom(-20).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerAddWidth:
        {
            self.testView.addWidth(-20).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerAddHeight:
        {
            self.testView.addHeight(-20).reverses(YES).animate(1);
        }
            break;
        case TFY_DancerAddSize:
        {
            self.testView.addSize(CGSizeMake(-20, -20)).reverses(YES).animate(1);
        }
            break;
            
            
        case TFY_DancerPath:
        {
            self.testView.path(self.bezierPath).repeat(TFY_DancerMax).reverses(YES).animate(1);
            self.shapeLayer.hidden = NO;
        }
            break;
        default:
            break;
    }
}


- (UIView *)testView
{
    if (!_testView)
    {
        _testView = [[UIView alloc] init];
        _testView.backgroundColor = UIColor.orangeColor;
    }
    return _testView;
}

- (UIImageView *)contenImageView
{
    if (!_contenImageView)
    {
        _contenImageView = [[UIImageView alloc] init];
        _contenImageView.contentMode = UIViewContentModeScaleAspectFill;
        _contenImageView.layer.masksToBounds = YES;
        _contenImageView.hidden = YES;
    }
    return _contenImageView;
}

- (UIBezierPath *)bezierPath
{
    if (!_bezierPath)
    {
        _bezierPath = [UIBezierPath bezierPath];
        [_bezierPath moveToPoint:CGPointMake(0, 0)];
        [_bezierPath addLineToPoint:CGPointMake(80, 100)];
        [_bezierPath addLineToPoint:CGPointMake(150, 0)];
        [_bezierPath addLineToPoint:CGPointMake(300, 200)];
        [_bezierPath closePath];
    }
    return _bezierPath;
}

- (CAShapeLayer *)shapeLayer
{
    if (!_shapeLayer)
    {
        _shapeLayer = [CAShapeLayer layer];
        _shapeLayer.strokeColor = UIColor.greenColor.CGColor;
        _shapeLayer.lineWidth = 2;
        _shapeLayer.path = self.bezierPath.CGPath;
        _shapeLayer.hidden = YES;
        _shapeLayer.fillColor = UIColor.clearColor.CGColor;
    }
    return _shapeLayer;
}

@end
