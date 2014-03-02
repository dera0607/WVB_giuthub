//
//  AppDelegate.h
//  TravelAndBook
//
//  Created by NexSeed on 2014/02/09.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
//#import "FirstViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
//{
//    UINavigationController *naviController;
//    FirstViewController *firstViewController;
//}

@property (strong, nonatomic) UIWindow *window;//標準でついている



@property (nonatomic ,assign) int SelectedSection;
@property (nonatomic ,assign) int SelectedRow;

@property (nonatomic ,assign) NSString *Name;

@end
