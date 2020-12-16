//
//  TFY_BasicAnimationKit.h
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/11.
//  最新版本: ---> 2.0.4

//  链式方式加载动画,以下功能以MARK为分类作划分.
//  本项目会长期维护更新.
//  (1)MAKE类,全部是以中心点为依据的动画.
//  (2)TAKE类,全部以边界点为依据.(此时暂时repeat参数是无效的,待后续处理).
//  (3)MOVE类,相对移动 (以中心点为依据).
//  (4)ADD类,相对移动(以边界为依据).
//  (5)通用是适用于所有类型的动画样式.
//  (6)不使用then参数,同时使用多个动画如makeWith(20).animate(1).makeHeight(20).animate(1)
//  会同时作用; 使用then参数时如makeWith(20).animate(1).then.makeHeight(20).animate(1)
//  会在动画widtha完成后再进行动画height
//  (7)TRANSITION 转场动画.
//
//  注: 如果没有特殊注释,则表示参数适用于所有类型.
//  凡是指定动画方式的,需要第一个调用. 例如makeWidth等

#import <Foundation/Foundation.h>

FOUNDATION_EXPORT double TFY_AudioPlayerKitVersionNumber;

FOUNDATION_EXPORT const unsigned char TFY_AudioPlayerKitVersionString[];

#define TFY_AudioPlayerKitRelease 0

#if TFY_AudioPlayerKitRelease

#import <TFY_BasicAnimationKit/TFY_Dancer.h>
#import <TFY_BasicAnimationKit/TFY_Dancer.h>
#import <TFY_BasicAnimationKit/UITableView+TFY_Dancer.h>
#import <TFY_BasicAnimationKit/UICollectionView+TFY_Dancer.h>

#else

#import "UIView+TFY_Dancer.h"
#import "CALayer+TFY_Dancer.h"
#import "UITableView+TFY_Dancer.h"
#import "UICollectionView+TFY_Dancer.h"

#endif
