//
//  ViewController.h
//  WVB
//
//  Created by NexSeed on 13/11/28.
//  Copyright (c) 2013年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <iAd/iAd.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource,ADBannerViewDelegate>{
//    NSArray *SectionName;
//    NSArray *PlaceName;
//    NSArray *PlacePic;
    
    
    NSArray *AreaName;
    NSArray *AreaPlace;
 
    NSArray *NameData;
    NSArray *ImageData;
    
    NSMutableArray *Asia1_NameData;
    NSMutableArray *Asia1_ImageData;
    
    NSMutableArray *NorthAmerica2_NameData;
    NSMutableArray *NorthAmerica2_ImageData;
    
    NSMutableArray *SouthAmerica3_NameData;
    NSMutableArray *SouthAmerica3_ImageData;
    
    NSMutableArray *Eourope4_NameData;
    NSMutableArray *Eourope4_ImageData;
    
    NSMutableArray *Africa5_NameData;
    NSMutableArray *Africa5_ImageData;
    
    NSMutableArray *Oceania6_NameData;
    NSMutableArray *Oceania6_ImageData;
    
    NSMutableArray *AroundTheWorld7_NameData;
    NSMutableArray *AroundTheWorld7_ImageData;
    
    
    
    
    NSDictionary *dataSource;
    
    //広告
    ADBannerView *adView;
    BOOL bannerIsVisible;
    
    

    

    
    
}


@property (weak, nonatomic) IBOutlet UITableView *TV;
@property (weak, nonatomic) IBOutlet UIImageView *Map;


@end
