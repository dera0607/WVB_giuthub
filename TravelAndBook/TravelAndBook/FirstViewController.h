//
//  FirstViewController.h
//  TravelAndBook
//
//  Created by NexSeed on 2014/02/10.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>{

    NSArray *AreaName;
    NSArray *AreaPlace;
    
    NSArray *NameData;
    NSArray *subNameData;
    NSArray *ImageData;
    
    NSMutableArray *Asia1_NameData;
    NSMutableArray *Asia1_subNameData;
    NSMutableArray *Asia1_ImageData;
    
    NSMutableArray *NorthAmerica2_NameData;
    NSMutableArray *NorthAmerica2_subNameData;
    NSMutableArray *NorthAmerica2_ImageData;
    
    NSMutableArray *SouthAmerica3_NameData;
    NSMutableArray *SouthAmerica3_subNameData;
    NSMutableArray *SouthAmerica3_ImageData;
    
    NSMutableArray *Eourope4_NameData;
    NSMutableArray *Eourope4_subNameData;
    NSMutableArray *Eourope4_ImageData;
    
    NSMutableArray *Africa5_NameData;
    NSMutableArray *Africa5_subNameData;
    NSMutableArray *Africa5_ImageData;
    
    NSMutableArray *Oceania6_NameData;
    NSMutableArray *Oceania6_subNameData;
    NSMutableArray *Oceania6_ImageData;
    
    NSMutableArray *AroundTheWorld7_NameData;
    NSMutableArray *AroundTheWorld7_subNameData;
    NSMutableArray *AroundTheWorld7_ImageData;
    
    
    
    
    NSDictionary *dataSource;





}
@property (weak, nonatomic) IBOutlet UITableView *TableView;

@end
