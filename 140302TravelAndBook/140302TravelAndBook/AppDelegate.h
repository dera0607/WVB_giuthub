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


//データ入力用
@property (strong, nonatomic)  NSArray *AreaName;
@property (strong, nonatomic) NSArray *AreaPlace;

@property (strong, nonatomic) NSArray *NameData;
@property (strong, nonatomic) NSArray *subNameData;
@property (strong, nonatomic) NSArray *ImageData;

@property (nonatomic, retain) NSMutableArray *Asia1_NameData;
@property (nonatomic, retain) NSMutableArray *Asia1_subNameData;
@property (nonatomic, retain) NSMutableArray *Asia1_ImageData;

@property (nonatomic, retain) NSMutableArray *NorthAmerica2_NameData;
@property (nonatomic, retain) NSMutableArray *NorthAmerica2_subNameData;
@property (nonatomic, retain) NSMutableArray *NorthAmerica2_ImageData;

@property (nonatomic, retain) NSMutableArray *SouthAmerica3_NameData;
@property (nonatomic, retain) NSMutableArray *SouthAmerica3_subNameData;
@property (nonatomic, retain) NSMutableArray *SouthAmerica3_ImageData;

@property (nonatomic, retain) NSMutableArray *Eourope4_NameData;
@property (nonatomic, retain) NSMutableArray *Eourope4_subNameData;
@property (nonatomic, retain) NSMutableArray *Eourope4_ImageData;

@property (nonatomic, retain) NSMutableArray *Africa5_NameData;
@property (nonatomic, retain) NSMutableArray *Africa5_subNameData;
@property (nonatomic, retain) NSMutableArray *Africa5_ImageData;

@property (nonatomic, retain) NSMutableArray *Oceania6_NameData;
@property (nonatomic, retain) NSMutableArray *Oceania6_subNameData;
@property (nonatomic, retain) NSMutableArray *Oceania6_ImageData;

@property (nonatomic, retain) NSMutableArray *AroundTheWorld7_NameData;
@property (nonatomic, retain) NSMutableArray *AroundTheWorld7_subNameData;
@property (nonatomic, retain) NSMutableArray *AroundTheWorld7_ImageData;

@end
