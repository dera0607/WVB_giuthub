//
//  DetailViewController.h
//  140302TravelAndBook
//
//  Created by NexSeed on 2014/03/02.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface DetailViewController : UIViewController<UIWebViewDelegate>{
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
    NSMutableArray *BookData2_Asia;
    NSMutableArray *BookImage2_Asia;
    NSMutableArray *BookLink2_Asia;
    
    NSMutableArray *BookData1_NorthAmerica;
    NSMutableArray *BookImage1_NorthAmerica;
    NSMutableArray *BookLink1_NorthAmerica;
    NSMutableArray *BookData2_NorthAmerica;
    NSMutableArray *BookImage2_NorthAmerica;
    NSMutableArray *BookLink2_NorthAmerica;
    
    NSMutableArray *BookData1_SouthAmerica;
    NSMutableArray *BookImage1_SouthAmerica;
    NSMutableArray *BookLink1_SouthAmerica;
    NSMutableArray *BookData2_SouthAmerica;
    NSMutableArray *BookImage2_SouthAmerica;
    NSMutableArray *BookLink2_SouthAmerica;
    
    NSMutableArray *BookData1_Eourope;
    NSMutableArray *BookImage1_Eourope;
    NSMutableArray *BookLink1_Eourope;
    NSMutableArray *BookData2_Eourope;
    NSMutableArray *BookImage2_Eourope;
    NSMutableArray *BookLink2_Eourope;
    
    NSMutableArray *BookData1_Africa;
    NSMutableArray *BookImage1_Africa;
    NSMutableArray *BookLink1_Africa;
    NSMutableArray *BookData2_Africa;
    NSMutableArray *BookImage2_Africa;
    NSMutableArray *BookLink2_Africa;
    
    NSMutableArray *BookData1_Oceania;
    NSMutableArray *BookImage1_Oceania;
    NSMutableArray *BookLink1_Oceania;
    NSMutableArray *BookData2_Oceania;
    NSMutableArray *BookImage2_Oceania;
    NSMutableArray *BookLink2_Oceania;
    
    NSMutableArray *BookData1_AroundTheWorld;
    NSMutableArray *BookImage1_AroundTheWorld;
    NSMutableArray *BookLink1_AroundTheWorld;
    NSMutableArray *BookData2_AroundTheWorld;
    NSMutableArray *BookImage2_AroundTheWorld;
    NSMutableArray *BookLink2_AroundTheWorld;
    
    
    int SelectedSection;
    int SelectedRow;
    
    UIView *ViewWeb1;
    UIWebView *WV1;
    
    UIView *ViewWeb2;
    UIWebView *WV2;
    
    NSInteger count_book1;
    NSInteger count_book2;
    
    
    UIActivityIndicatorView * indicator;

}

@property (nonatomic, retain)NSString *myStrName;
@property (nonatomic, retain)NSString *myStrImage;

@property (weak, nonatomic) IBOutlet UILabel *PlaceLabel;
@property (weak, nonatomic) IBOutlet UIImageView *PlaceImageView;

@property (weak, nonatomic) IBOutlet UILabel *Yomitaihon;

@property (weak, nonatomic) IBOutlet UIImageView *Book1Image;
@property (weak, nonatomic) IBOutlet UILabel *book1Name;

@property (weak, nonatomic) IBOutlet UIImageView *Book2Image;
@property (weak, nonatomic) IBOutlet UILabel *book2Name;

@property (nonatomic) NSInteger webViewLoadingCount;//webの読み込みカウント用

@property (nonatomic, retain)NSString *URL1;
@property (nonatomic, retain)NSString *URL2;

@end
