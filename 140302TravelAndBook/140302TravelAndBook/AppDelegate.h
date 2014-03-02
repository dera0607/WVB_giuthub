//
//  AppDelegate.h
//  140302TravelAndBook
//
//  Created by NexSeed on 2014/03/02.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;//もともとあるやつ

@property (strong, nonatomic) NSString *Pass_NameData;
@property (strong, nonatomic) UIImage *Pass_NameImage;
@property (strong, nonatomic) NSString *Pass_Area;


@property (nonatomic ,assign) int SelectedSection;
@property (nonatomic ,assign) int SelectedRow;


@end
