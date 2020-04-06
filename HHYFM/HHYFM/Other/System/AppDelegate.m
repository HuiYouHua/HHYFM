//
//  AppDelegate.m
//  HHYFM
//
//  Created by 华惠友 on 2020/3/29.
//  Copyright © 2020 com.development. All rights reserved.
//

#import "AppDelegate.h"
#import "MainModuleAPI.h"
#import "TestVC.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    UITabBarController *rootVC = [MainModuleAPI rootTabBarCcontroller];
    [MainModuleAPI addChildVC:[TestVC new] normalImageName:@"tabbar_find_n" selectedImageName:@"tabbar_find_h" isRequiredNavController:YES];
    [MainModuleAPI addChildVC:[UIViewController new] normalImageName:@"tabbar_sound_n" selectedImageName:@"tabbar_sound_h" isRequiredNavController:YES];
    [MainModuleAPI addChildVC:[UIViewController new] normalImageName:@"tabbar_download_n" selectedImageName:@"tabbar_download_h" isRequiredNavController:YES];
    [MainModuleAPI addChildVC:[UIViewController new] normalImageName:@"tabbar_me_n" selectedImageName:@"tabbar_me_h" isRequiredNavController:YES];

    [MainModuleAPI setTabbarMiddleBtnClick:^(BOOL isPlaying) {
        if (isPlaying) {
            NSLog(@"播放");
        }else {
            NSLog(@"暂停");
        }
    }];


    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    return YES;
}



@end
