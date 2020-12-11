//
//  TFY_MainCollectionViewCell.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//

#import "TFY_MainCollectionViewCell.h"

@interface TFY_MainCollectionViewCell ()
@property (nonatomic, strong) UIView * bgShadowView;
@property (nonatomic, strong) UIImageView * bgImageView;
@property (nonatomic, strong) UILabel * titleLabel;
@property (nonatomic, strong) UILabel * detailLabel;
@end

@implementation TFY_MainCollectionViewCell

+ (CGSize)itemSize
{
    return CGSizeMake(TFY_Width_W() - 20 * 2, 180);
}


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.masksToBounds = NO;
        self.contentView.layer.masksToBounds = NO;
        
        [self.contentView addSubview:self.bgShadowView];
        [self.contentView addSubview:self.bgImageView];
        [self.contentView addSubview:self.detailLabel];
        [self.contentView addSubview:self.titleLabel];
        
        [self.bgShadowView tfy_AutoSize:0 top:0 right:0 bottom:0];
        [self.bgImageView tfy_AutoSize:0 top:0 right:0 bottom:0];
        self.detailLabel
        .tfy_LeadingSpace(20)
        .tfy_TrailingSpace(20)
        .tfy_BottomSpace(10);
        
        self.titleLabel
        .tfy_LeadingSpace(20)
        .tfy_TrailingSpace(20)
        .tfy_BottomSpaceToView(5, self.detailLabel);
        
    }
    return self;
}

- (void)setModel:(TFY_MainModel *)model {
    _model = model;
    
    self.bgImageView.makeChain.image([UIImage imageNamed:_model.bgImage]);
    
    self.titleLabel.makeChain.text(_model.title);
    
    self.detailLabel.makeChain.text(_model.detail);

}

- (UIView *)bgShadowView {
    if (!_bgShadowView) {
        _bgShadowView = UIViewSet();
        _bgShadowView.makeChain
        .backgroundColor(UIColor.whiteColor)
        .shadow(CGSizeMake(0, 0), 24, [UIColor tfy_colorWithHex:@"000000"], 0.3);
    }
    return _bgShadowView;
}

- (UIImageView *)bgImageView {
    if (!_bgImageView) {
        _bgImageView = UIImageViewSet();
        _bgImageView.makeChain
        .contentMode(UIViewContentModeScaleAspectFill)
        .cornerRadius(12)
        .masksToBounds(YES);
    }
    return _bgImageView;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = UILabelSet();
        _titleLabel.makeChain
        .font([UIFont systemFontOfSize:18 weight:UIFontWeightSemibold])
        .textColor(UIColor.whiteColor);
    }
    return _titleLabel;
}

- (UILabel *)detailLabel {
    if (!_detailLabel) {
        _detailLabel = UILabelSet();
        _detailLabel.makeChain
        .font([UIFont systemFontOfSize:16 weight:UIFontWeightRegular])
        .numberOfLines(0)
        .textColor(UIColor.whiteColor);
    }
    return _detailLabel;
}
@end
