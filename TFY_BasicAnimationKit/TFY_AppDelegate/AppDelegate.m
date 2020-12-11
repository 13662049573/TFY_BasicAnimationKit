//
//  AppDelegate.m
//  TFY_BasicAnimationKit
//
//  Created by 田风有 on 2020/12/10.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    if (!TFY_ScenePackage.isSceneApp) {
            self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
            self.window.backgroundColor = [UIColor whiteColor];
            [self.window makeKeyAndVisible];
    }
    [TFY_ScenePackage addBeforeWindowEvent:^(TFY_Scene * _Nonnull application) {
        TFY_NavigationController *nav = [[TFY_NavigationController alloc] initWithRootViewController:ViewController.new];
        [UIApplication tfy_window].rootViewController = nav;
    }];
    return YES;
}




@end
