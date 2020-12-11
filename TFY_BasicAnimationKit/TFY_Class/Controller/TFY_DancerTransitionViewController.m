//
//  TFY_DancerTransitionViewController.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "TFY_DancerTransitionViewController.h"

@interface TFY_DancerTransitionViewController ()
@property(nonatomic , strong)TFY_StackView *stackView;
@property(nonatomic , strong)UIImageView *testImageview;
@end

@implementation TFY_DancerTransitionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.stackView];
    self.stackView
    .tfy_LeftSpace(0)
    .tfy_TopSpace(20)
    .tfy_RightSpace(0)
    .tfy_Height(TFY_Width_W()/2);
    
    NSArray *titleArr = @[@"Push",@"Reveal",@"MoveIn",
                          @"Cube",@"Suck",@"Ripple",
                          @"Curl",@"UnCurl",@"Flip",
                          @"HollowOpen",@"HollowClose"];
    
    [titleArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIButton *button = UIButtonSet();
        button.makeChain
        .text(obj, UIControlStateNormal)
        .textColor(UIColor.whiteColor, UIControlStateNormal)
        .font([UIFont systemFontOfSize:15 weight:UIFontWeightBold])
        .cornerRadius(1)
        .borderColor(UIColor.yellowColor.CGColor)
        .backgroundColor(UIColor.orangeColor)
        .addTarget(self, @selector(titleClick:), UIControlEventTouchUpInside)
        .makeTag(idx)
        .borderColor(UIColor.whiteColor.CGColor)
        .borderWidth(1)
        .addToSuperView(self.stackView);
    }];
    [self.stackView tfy_StartLayout];
    
    
    [self.view addSubview:self.testImageview];
    self.testImageview
    .tfy_TopSpaceToView(20, self.stackView)
    .tfy_CenterX(0)
    .tfy_size(TFY_Width_W()/2, TFY_Width_W()/2);
    
    self.testImageview.layer
    .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
    .transitionFade
    .reverses(YES)
    .animate(1)
    .completion = ^(TFY_Dancer animation) {
        self.testImageview.makeChain.image([UIImage imageNamed:@"content_bg_one"]);
    };
    
    
}

- (void)titleClick:(UIButton *)btn {
    switch (btn.tag) {
        case 0:
            self.testImageview.layer
            .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
            .transitionPush
            .reverses(YES)
            .animate(1);
            break;
        case 1:
            self.testImageview.layer
            .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
            .transitionReveal
            .reverses(YES)
            .animate(1);
            break;
        case 2:
            self.testImageview.layer
            .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
            .transitionMoveIn
            .reverses(YES)
            .animate(1);
            break;
        case 3:
            self.testImageview.layer
            .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
            .transitionCube
            .reverses(YES)
            .animate(1);
            break;
        case 4:
            self.testImageview.layer
            .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
            .transitionSuck
            .reverses(YES)
            .animate(1);
            break;
        case 5:
            self.testImageview.layer
            .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
            .transitionRipple
            .reverses(YES)
            .animate(1);
            break;
        case 6:
            self.testImageview.layer
            .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
            .transitionCurl
            .reverses(YES)
            .animate(1);
            break;
        case 7:
            self.testImageview.layer
            .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
            .transitionUnCurl
            .reverses(YES)
            .animate(1);
            break;
        case 8:
            self.testImageview.layer
            .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
            .transitionFlip
            .reverses(YES)
            .animate(1);
            break;
        case 9:
            self.testImageview.layer
            .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
            .transitionHollowOpen
            .reverses(YES)
            .animate(1);
            break;
        case 10:
            self.testImageview.layer
            .transitionDir(TFY_DancerTransitionDirectionFromMiddle)
            .transitionHollowClose
            .reverses(YES)
            .animate(1);
            break;
        default:
            break;
    }
}


- (TFY_StackView *)stackView {
    if (!_stackView) {
        _stackView = TFY_StackView.new;
        _stackView.tfy_Column = 3;
        _stackView.tfy_Edge = UIEdgeInsetsMake(10, 10, 10, 10);
        _stackView.tfy_Orientation = All;
    }
    return _stackView;
}

- (UIImageView *)testImageview {
    if (!_testImageview) {
        _testImageview = UIImageViewSet();
        _testImageview.makeChain
        .image([UIImage imageNamed:@"content_bg_two"]);
    }
    return _testImageview;
}
@end
