//
//  ViewController.h
//  WVB
//
//  Created by NexSeed on 13/11/28.
//  Copyright (c) 2013年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
//    NSArray *SectionName;
//    NSArray *PlaceName;
//    NSArray *PlacePic;
    NSMutableArray *NameData;
    NSMutableArray *ImageData;
    

    
    
}


@property (weak, nonatomic) IBOutlet UITableView *TV;
@property (weak, nonatomic) IBOutlet UIImageView *Map;


@end
