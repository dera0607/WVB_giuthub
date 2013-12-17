//
//  secondViewController.h
//  WVB
//
//  Created by NexSeed on 13/11/29.
//  Copyright (c) 2013年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


@interface secondViewController : UIViewController<UIWebViewDelegate>{
    NSString *myStr;
    //各地域（セクション）の配列をまとめる配列用
    NSMutableArray *BookData1;
    NSMutableArray *BookImage1;
    NSMutableArray *BookLink1;
    
    NSMutableArray *BookData2;
    NSMutableArray *BookImage2;
    NSMutableArray *BookLink2;
    
    //各地域（セクション）の配列
    NSMutableArray *BookData1_Asia;
    NSMutableArray *BookImage1_Asia;
    NSMutableArray *BookLink1_Asia;
    
    NSMutableArray *BookData1_NorthAmerica;
    NSMutableArray *BookImage1_NorthAmerica;
    NSMutableArray *BookLink1_NorthAmerica;
    
    NSMutableArray *BookData1_SouthAmerica;
    NSMutableArray *BookImage1_SouthAmerica;
    NSMutableArray *BookLink1_SouthAmerica;
    
    NSMutableArray *BookData2_Asia;
    NSMutableArray *BookImage2_Asia;
    NSMutableArray *BookLink2_Asia;
    
    NSMutableArray *BookData2_NorthAmerica;
    NSMutableArray *BookImage2_NorthAmerica;
    NSMutableArray *BookLink2_NorthAmerica;
    
    NSMutableArray *BookData2_SouthAmerica;
    NSMutableArray *BookImage2_SouthAmerica;
    NSMutableArray *BookLink2_SouthAmerica;
    
    
    int SelectedSection;
    int SelectedRow;
    
    UIView *ViewWeb1;
    UIWebView *WV1;
    
    UIView *ViewWeb2;
    UIWebView *WV2;
    

    UIActivityIndicatorView * indicator;
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

@property (nonatomic) NSInteger webViewLoadingCount;//webの読み込みカウント用

@property (nonatomic, retain)NSString *URL1;
@property (nonatomic, retain)NSString *URL2;



@end
