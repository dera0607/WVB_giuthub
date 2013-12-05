//
//  secondViewController.h
//  WVB
//
//  Created by NexSeed on 13/11/29.
//  Copyright (c) 2013年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController{
    NSString *myStr;
    
    NSMutableArray *BookData1;
    NSMutableArray *BookImage1;
    NSMutableArray *BookLink1;
    
    NSMutableArray *BookData2;
    NSMutableArray *BookImage2;
    NSMutableArray *BookLink2;
}

@property (nonatomic, retain)NSString *myStrName;
@property (nonatomic, retain)NSString *myStrImage;

@property (weak, nonatomic) IBOutlet UILabel *sLabel;
@property (weak, nonatomic) IBOutlet UIImageView *sImageView;

@property (weak, nonatomic) IBOutlet UILabel *yomitaihon;


@property (weak, nonatomic) IBOutlet UIImageView *book1Image;
@property (weak, nonatomic) IBOutlet UILabel *book1Name;



@property (weak, nonatomic) IBOutlet UIImageView *book2Image;
@property (weak, nonatomic) IBOutlet UILabel *book2Name;


@end
