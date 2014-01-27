//
//  AppDelegate.h
//  WVB
//
//  Created by NexSeed on 13/11/28.
//  Copyright (c) 2013年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) NSString *Pass_NameData;
@property (strong, nonatomic) UIImage *Pass_NameImage;
@property (strong, nonatomic) NSString *Pass_Area;

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic ,assign) int SelectedSection;
@property (nonatomic ,assign) int SelectedRow;

@end
