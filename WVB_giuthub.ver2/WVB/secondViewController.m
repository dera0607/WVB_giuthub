//
//  secondViewController.m
//  WVB
//
//  Created by NexSeed on 13/11/29.
//  Copyright (c) 2013年 NexSeed. All rights reserved.
//

#import "secondViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "SafariActivity.h"

@interface secondViewController ()<UIPopoverControllerDelegate>{
//	UIPopoverController *_popover; //よく分からんがActivityViewのsafariに必要っぽいとこ
}

@end


@implementation secondViewController{
    // ローディング画面用変数
    UIView *_IndicatorBackView;
    UIView *_loadingView;
    UIActivityIndicatorView *_indicatorView;
    UILabel *_processinglabel;
    
}
@synthesize myStrName;
@synthesize myStrImage;
@synthesize URL1;
@synthesize URL2;




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];  
    //AppDelegateから、タップされたセルのテキストと画像を読み込む
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.sLabel.text = appDelegate.Pass_NameData;
    
//    UIImage* MapImage =[UIImage imageNamed:@"WorldMap.gif"];
    UIImageView* sImageView =[[UIImageView alloc]initWithImage:appDelegate.Pass_NameImage];
    CGRect rect_secondImageView = CGRectMake(10, 100, 300, 180);
    sImageView.frame = rect_secondImageView ;
    [self.view addSubview:sImageView];
//    [self.view sendSubviewToBack:map_imageview];//ビューを再背面に
    self.sImageView.image = appDelegate.Pass_NameImage;
    
    
    //背景の設定
    
    UIImage* backImage =[UIImage imageNamed:@"Paper.jpg"];
    UIImageView* imageView =[[UIImageView alloc]initWithImage:backImage];
    CGRect rect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView.frame = rect;
    [self.view addSubview:imageView];
    [self.view sendSubviewToBack:imageView];//ビューを再背面に
    
    
    //UIImageViewのサイズを自動的にimageのサイズに合わせる
    
    
    
    
    
    //AppDelegateから選択されたsectonとrowのデータを読み込む
    SelectedSection = appDelegate.SelectedSection;
    SelectedRow = appDelegate.SelectedRow;
    
    NSLog(@"セカンドビューAppDelegate_indexPath.section = %d", appDelegate.SelectedSection);
    NSLog(@"セカンドビューAppDelegate_indexPath.section = %d", appDelegate.SelectedRow);
    
    
  
    
    

    //具体的な本データを挿入
    //*１つ目の本*//
    //本1の名前
     NSLog(@"BookData1のデータを格納します");
    

    //本1の名前
    //@"1.アジア",@"2.北米",@"3.南米",@"4.ヨーロッパ",@"5.アフリカ",@"6.オセアニア",@"7.世界一周"
    BookData1_Asia  = [@[
                       @"チベット旅行記",
                       @"懐かしい未来 ラダックから学ぶ",
                       @"ガンジス河でバタフライ",
                       @"ONE PIECE 23",
                       @"カンボジアからやってきたワンディ"
                       ]mutableCopy];
    BookData1_NorthAmerica  = [@[
                               @"2012",
                               @"ジョニーベアー―イエローストーンの子グマ (シートン動物記 1) "
                               ]mutableCopy];
    BookData1_SouthAmerica  = [@[
                               @"パチャママの贈り物",
                               @"マチュピチュ (写真でわかる謎への旅)",
                               @"パタゴニアを行く―世界でもっとも美しい大地",
                               @"モーターサイクル・ダイアリーズ ",
                               @"失われた世界"
                               ]mutableCopy];
    BookData1_Eourope  = [@[
                          @"サウンド・オブ・ミュージック ",
                          @"紅の豚",
                          @"魔女の宅急便"
                          ]mutableCopy];
    BookData1_Africa  = [@[
                         @"サハラに死す",
                         @"星の王子様"
                         ]mutableCopy];
    BookData1_Oceania  = [@[
                          @"世界の中心で愛を叫ぶ",
                          @"ハート・ブルー"
                          ]mutableCopy];
    BookData1_AroundTheWorld  = [@[
                                 @"やった。―4年3カ月も有給休暇をもらって世界一周5万5000キロを自転車で走ってきちゃった男",
                                 @"深夜特急"
                                 ]mutableCopy];
    BookData1 = [@[BookData1_Asia, BookData1_NorthAmerica, BookData1_SouthAmerica,BookData1_Eourope,BookData1_Africa,BookData1_Oceania,BookData1_AroundTheWorld]mutableCopy];
    
    
    //本1の画像
    BookImage1_Asia  = [@[[UIImage imageNamed:@"チベット旅行記.jpg"],
                          [UIImage imageNamed:@"懐かしい未来 ラダックから学ぶ.jpg"],
                          [UIImage imageNamed:@"ガンジス河でバタフライ.jpg"],
                          [UIImage imageNamed:@"ONE PIECE 23.jpg"],
                          [UIImage imageNamed:@"カンボジアからやってきたワンディ.jpg"]
                        ]mutableCopy];
    BookImage1_NorthAmerica  =[@[[UIImage imageNamed:@"2012.jpg"],
                                 [UIImage imageNamed:@"ジョニーベアー―イエローストーンの子グマ (シートン動物記 1).jpg"]]mutableCopy];
    BookImage1_SouthAmerica  = [@[
                                  [UIImage imageNamed:@"パチャママの贈りもの.jpg"],
                                  [UIImage imageNamed:@"マチュピチュ (写真でわかる謎への旅) .jpg"],
                                [UIImage imageNamed:@"パタゴニアを行く―世界でもっとも美しい大地.jpg"],
                                [UIImage imageNamed:@"モーターサイクルダイアリーズ.jpg"],
                                [UIImage imageNamed:@"失われた世界.jpg"]
                                ]mutableCopy];
    BookImage1_Eourope  =[@[[UIImage imageNamed:@"サウンドオブミュージック.jpg"],
                            [UIImage imageNamed:@"紅の豚.jpg"],
                            [UIImage imageNamed:@"魔女の宅急便.jpg"]
                          ]mutableCopy];
    BookImage1_Africa  = [@[[UIImage imageNamed:@"サハラに死す.jpg"],
                            [UIImage imageNamed:@"星の王子様.jpg"]
                          ]mutableCopy];
    BookImage1_Oceania  =[@[[UIImage imageNamed:@"世界の中心で、愛をさけぶ スタンダード.jpg"],
                            [UIImage imageNamed:@"ハート・ブルー.jpg"]
                          ]mutableCopy];
    BookImage1_AroundTheWorld  = [@[
                                    [UIImage imageNamed:@"やった。―4年3カ月も有給休暇をもらって世界一周5万5000キロを自転車で走ってきちゃった男.jpg"],
                                    [UIImage imageNamed:@"深夜特急.jpg"]
                                  ]mutableCopy];
    
    
    
    BookImage1 = [@[BookImage1_Asia, BookImage1_NorthAmerica, BookImage1_SouthAmerica,BookImage1_Eourope, BookImage1_Africa, BookImage1_Oceania,BookImage1_AroundTheWorld ]mutableCopy];

    
     //本1のリンク
    
    BookLink1_Asia = [@[
                      @"http://www.amazon.co.jp/%E3%83%81%E3%83%99%E3%83%83%E3%83%88%E6%97%85%E8%A1%8C%E8%A8%98-%E8%AC%9B%E8%AB%87%E7%A4%BE%E5%AD%A6%E8%A1%93%E6%96%87%E5%BA%AB-263-%E6%B2%B3%E5%8F%A3-%E6%85%A7%E6%B5%B7/dp/4061582631",
                      @"http://www.amazon.co.jp/%E6%87%90%E3%81%8B%E3%81%97%E3%81%84%E6%9C%AA%E6%9D%A5-%E3%83%A9%E3%83%80%E3%83%83%E3%82%AF%E3%81%8B%E3%82%89%E5%AD%A6%E3%81%B6-%E3%83%98%E3%83%AC%E3%83%8A%E3%83%BB%E3%83%8E%E3%83%BC%E3%83%90%E3%83%BC%E3%82%B0-%E3%83%9B%E3%83%83%E3%82%B8/dp/4905317002/ref=sr_1_1?s=books&ie=UTF8&qid=1387338357&sr=1-1&keywords=%E3%83%A9%E3%83%80%E3%83%83%E3%82%AF",
                      @"http://www.amazon.co.jp/%E3%82%AC%E3%83%B3%E3%82%B8%E3%82%B9%E6%B2%B3%E3%81%A7%E3%83%90%E3%82%BF%E3%83%95%E3%83%A9%E3%82%A4-%E5%B9%BB%E5%86%AC%E8%88%8E%E6%96%87%E5%BA%AB-%E3%81%9F%E3%81%8B%E3%81%AE-%E3%81%A6%E3%82%8B%E3%81%93/dp/4344402081/ref=sr_1_1?s=books&ie=UTF8&qid=1387663735&sr=1-1&keywords=%E3%82%AC%E3%83%B3%E3%82%B8%E3%82%B9",
                      @"http://www.amazon.co.jp/ONE-PIECE-23-%E3%82%B8%E3%83%A3%E3%83%B3%E3%83%97%E3%83%BB%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E6%A0%84%E4%B8%80%E9%83%8E/dp/4088732529/ref=sr_1_cc_1?s=aps&ie=UTF8&qid=1387338249&sr=1-1-catcorr&keywords=%E3%83%AF%E3%83%B3%E3%83%94%E3%83%BC%E3%82%B9%E3%80%8023",@"http://www.amazon.co.jp/exec/obidos/ASIN/4104463027/ref=nosim?tag=maftracking15136-22&linkCode=ure&creative=6339",
                      @"http://www.amazon.co.jp/%E3%82%AB%E3%83%B3%E3%83%9C%E3%82%B8%E3%82%A2%E3%81%8B%E3%82%89%E3%82%84%E3%81%A3%E3%81%A6%E3%81%8D%E3%81%9F%E3%83%AF%E3%83%B3%E3%83%87%E3%82%A3-%E8%AC%9D-%E5%AD%9D%E6%B5%A9/dp/4104463027"
                      ]mutableCopy];
    BookLink1_NorthAmerica = [@[
                              @"http://www.amazon.co.jp/2012-%E3%82%B9%E3%82%BF%E3%83%B3%E3%83%80%E3%83%BC%E3%83%89%E7%89%88-DVD-%E3%82%AD%E3%82%A6%E3%82%A7%E3%83%86%E3%83%AB%E3%83%BB%E3%82%A4%E3%82%B8%E3%83%A7%E3%83%95%E3%82%A9%E3%83%BC/dp/B0035UZ5VG/ref=sr_1_11?ie=UTF8&qid=1387683798&sr=8-11&keywords=2012+%E6%98%A0%E7%94%BB%E3%80%80dvd",
                              @"http://www.amazon.co.jp/%E3%83%95%E3%82%A9%E3%83%AC%E3%82%B9%E3%83%88%E3%83%BB%E3%82%AC%E3%83%B3%E3%83%97-DVD-%E3%83%88%E3%83%A0%E3%83%BB%E3%83%8F%E3%83%B3%E3%82%AF%E3%82%B9/dp/B000FBHTOO"
                              ]mutableCopy];
    BookLink1_SouthAmerica = [@[
                              @"http://eiga.com/movie/54940/",
                              @"http://www.amazon.co.jp/%E3%83%9E%E3%83%81%E3%83%A5%E3%83%94%E3%83%81%E3%83%A5-%E5%86%99%E7%9C%9F%E3%81%A7%E3%82%8F%E3%81%8B%E3%82%8B%E8%AC%8E%E3%81%B8%E3%81%AE%E6%97%85-%E6%9F%B3%E8%B0%B7-%E6%9D%9E%E4%B8%80%E9%83%8E/dp/4844133098/ref=cm_cr_pr_product_top",
                              @"http://www.amazon.co.jp/%E3%82%AB%E3%83%A9%E3%83%BC%E7%89%88-%E3%83%91%E3%82%BF%E3%82%B4%E3%83%8B%E3%82%A2%E3%82%92%E8%A1%8C%E3%81%8F%E2%80%95%E4%B8%96%E7%95%8C%E3%81%A7%E3%82%82%E3%81%A3%E3%81%A8%E3%82%82%E7%BE%8E%E3%81%97%E3%81%84%E5%A4%A7%E5%9C%B0-%E4%B8%AD%E5%85%AC%E6%96%B0%E6%9B%B8-%E9%87%8E%E6%9D%91-%E5%93%B2%E4%B9%9F/dp/4121020928/ref=sr_1_5?s=books&ie=UTF8&qid=1387640027&sr=1-5&keywords=%E3%83%91%E3%82%BF%E3%82%B4%E3%83%8B%E3%82%A2",
                              @"http://www.amazon.co.jp/%E3%83%A2%E3%83%BC%E3%82%BF%E3%83%BC%E3%82%B5%E3%82%A4%E3%82%AF%E3%83%AB%E3%83%BB%E3%83%80%E3%82%A4%E3%82%A2%E3%83%AA%E3%83%BC%E3%82%BA-%E8%A7%92%E5%B7%9D%E6%96%87%E5%BA%AB-%E3%82%A8%E3%83%AB%E3%83%8D%E3%82%B9%E3%83%88%E3%83%BB%E3%83%81%E3%82%A7-%E3%82%B2%E3%83%90%E3%83%A9/dp/4043170025",
                              @"http://www.amazon.co.jp/%E5%A4%B1%E3%82%8F%E3%82%8C%E3%81%9F%E4%B8%96%E7%95%8C%E2%80%95%E3%83%81%E3%83%A3%E3%83%AC%E3%83%B3%E3%82%B8%E3%83%A3%E3%83%BC%E6%95%99%E6%8E%88%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E5%89%B5%E5%85%83SF%E6%96%87%E5%BA%AB-%E3%82%B3%E3%83%8A%E3%83%B3%E3%83%BB%E3%83%89%E3%82%A4%E3%83%AB/dp/4488608027/ref=sr_1_2?ie=UTF8&qid=1387548291&sr=8-2&keywords=%E3%83%AD%E3%82%B9%E3%83%88%E3%83%AF%E3%83%BC%E3%83%AB%E3%83%89%E3%80%80%E3%82%B3%E3%83%8A%E3%83%B3"
                              ]mutableCopy];
    BookLink1_Eourope = [@[
                         @"http://www.amazon.co.jp/%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%BB%E3%82%AA%E3%83%96%E3%83%BB%E3%83%9F%E3%83%A5%E3%83%BC%E3%82%B8%E3%83%83%E3%82%AF-%E3%83%95%E3%82%A1%E3%83%9F%E3%83%AA%E3%83%BC%E3%83%BB%E3%83%90%E3%83%BC%E3%82%B8%E3%83%A7%E3%83%B3-DVD-%E3%82%B8%E3%83%A5%E3%83%AA%E3%83%BC%E3%83%BB%E3%82%A2%E3%83%B3%E3%83%89%E3%83%AA%E3%83%A5%E3%83%BC%E3%82%B9/dp/B000EZ8CHE/ref=sr_1_2?s=dvd&ie=UTF8&qid=1387688600&sr=1-2&keywords=%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%82%AA%E3%83%96%E3%83%9F%E3%83%A5%E3%83%BC%E3%82%B8%E3%83%83%E3%82%AF",
                         @"http://www.amazon.co.jp/%E7%B4%85%E3%81%AE%E8%B1%9A-DVD-%E5%AE%AE%E5%B4%8E%E9%A7%BF/dp/B00005R5J6",
                         @"http://www.amazon.co.jp/%E9%AD%94%E5%A5%B3%E3%81%AE%E5%AE%85%E6%80%A5%E4%BE%BF-DVD-%E5%AE%AE%E5%B4%8E%E9%A7%BF/dp/B00005J4ST/ref=sr_1_1?s=dvd&ie=UTF8&qid=1387709950&sr=1-1&keywords=%E9%AD%94%E5%A5%B3%E3%81%AE%E5%AE%85%E6%80%A5%E4%BE%BF"
                         ]mutableCopy];
    BookLink1_Africa = [@[
                        @"http://www.amazon.co.jp/%E3%82%B5%E3%83%8F%E3%83%A9%E3%81%AB%E6%AD%BB%E3%81%99%E2%80%95%E2%80%95%E4%B8%8A%E6%B8%A9%E6%B9%AF%E9%9A%86%E3%81%AE%E4%B8%80%E7%94%9F-%E3%83%A4%E3%83%9E%E3%82%B1%E3%82%A4%E6%96%87%E5%BA%AB-%E4%B8%8A%E6%B8%A9%E6%B9%AF%E9%9A%86/dp/4635047504/ref=sr_1_5?s=books&ie=UTF8&qid=1387643390&sr=1-5&keywords=%E3%82%B5%E3%83%8F%E3%83%A9",
                        @"http://www.amazon.co.jp/%E6%98%9F%E3%81%AE%E7%8E%8B%E5%AD%90%E3%81%95%E3%81%BE%E2%80%95%E3%82%AA%E3%83%AA%E3%82%B8%E3%83%8A%E3%83%AB%E7%89%88-%E3%82%B5%E3%83%B3-%E3%83%86%E3%82%B0%E3%82%B8%E3%83%A5%E3%83%9A%E3%83%AA/dp/4001156768/ref=sr_1_1?s=books&ie=UTF8&qid=1387767040&sr=1-1&keywords=%E6%98%9F%E3%81%AE%E7%8E%8B%E5%AD%90%E6%A7%98"
                        ]mutableCopy];
    BookLink1_Oceania = [@[
                         @"http://www.amazon.co.jp/%E4%B8%96%E7%95%8C%E3%81%AE%E4%B8%AD%E5%BF%83%E3%81%A7%E3%80%81%E6%84%9B%E3%82%92%E3%81%95%E3%81%91%E3%81%B6-%E3%82%B9%E3%82%BF%E3%83%B3%E3%83%80%E3%83%BC%E3%83%89%E3%83%BB%E3%82%A8%E3%83%87%E3%82%A3%E3%82%B7%E3%83%A7%E3%83%B3-DVD-%E5%A4%A7%E6%B2%A2%E3%81%9F%E3%81%8B%E3%81%8A/dp/B0002Z7QDM/ref=sr_1_1?s=dvd&ie=UTF8&qid=1387646341&sr=1-1&keywords=%E4%B8%96%E7%95%8C%E3%81%AE%E4%B8%AD%E5%BF%83%E3%81%A7%E3%80%81%E6%84%9B%E3%82%92%E3%81%95%E3%81%91%E3%81%B6+dvd+%E6%98%A0%E7%94%BB",
                         @"http://www.amazon.co.jp/%E3%83%8F%E3%83%BC%E3%83%88%E3%83%BB%E3%83%96%E3%83%AB%E3%83%BC-DVD-%E3%82%AD%E3%82%A2%E3%83%8C%E3%83%BB%E3%83%AA%E3%83%BC%E3%83%96%E3%82%B9/dp/B000E1KMG2"
                         ]mutableCopy];
    BookLink1_AroundTheWorld = [@[
                                @"http://www.amazon.co.jp/%E3%82%84%E3%81%A3%E3%81%9F%E3%80%82%E2%80%954%E5%B9%B43%E3%82%AB%E6%9C%88%E3%82%82%E6%9C%89%E7%B5%A6%E4%BC%91%E6%9A%87%E3%82%92%E3%82%82%E3%82%89%E3%81%A3%E3%81%A6%E4%B8%96%E7%95%8C%E4%B8%80%E5%91%A85%E4%B8%875000%E3%82%AD%E3%83%AD%E3%82%92%E8%87%AA%E8%BB%A2%E8%BB%8A%E3%81%A7%E8%B5%B0%E3%81%A3%E3%81%A6%E3%81%8D%E3%81%A1%E3%82%83%E3%81%A3%E3%81%9F%E7%94%B7-%E5%9D%82%E6%9C%AC-%E9%81%94/dp/4895888029/ref=sr_1_26?s=books&ie=UTF8&qid=1387899752&sr=1-26&keywords=%E4%B8%96%E7%95%8C%E4%B8%80%E5%91%A8",
                                @"http://www.amazon.co.jp/%E6%B7%B1%E5%A4%9C%E7%89%B9%E6%80%A5%E3%80%881%E3%80%89%E9%A6%99%E6%B8%AF%E3%83%BB%E3%83%9E%E3%82%AB%E3%82%AA-%E6%96%B0%E6%BD%AE%E6%96%87%E5%BA%AB-%E6%B2%A2%E6%9C%A8-%E8%80%95%E5%A4%AA%E9%83%8E/dp/4101235058/ref=sr_1_1?s=books&ie=UTF8&qid=1387900554&sr=1-1&keywords=%E6%B7%B1%E5%A4%9C%E7%89%B9%E6%80%A5"
                                ]mutableCopy];
    BookLink1 = [@[BookLink1_Asia, BookLink1_NorthAmerica, BookLink1_SouthAmerica, BookLink1_Eourope, BookLink1_Africa, BookLink1_Oceania, BookLink1_AroundTheWorld]mutableCopy];
    
   
    //本1の表示
    //本の名前
     NSLog(@"BookData1.count = %d", [BookData1 count]);
    NSLog(@"本１の名前は%@です", [BookData1 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow]);
    self.book1Name.text = [BookData1 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow];
    NSLog(@"本１の名前入れました");
    //本の画像

    self.book1Image.image = [BookImage1 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow];
    self.book1Image.contentMode = UIViewContentModeScaleAspectFit;
//    self.book1Image.contentMode = UIViewContentModeCenter;//サイズを自動調整
    NSLog(@"本１の画像入れました");
    NSLog(@"本１の画像データは%@です", [BookImage1 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow]);
    
    //本のリンク
    self.URL1 = [BookLink1 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow];
    NSLog(@"本１のリンク入れました");
 
    
    
    
    
    
    //*２つ目の本*//
    //本2の名前
    NSLog(@"BookData2に文字を入れます");
    
    //本2の名前
    BookData2_Asia  = [@[
                       @"ダライ・ラマに恋して ",
                       @"ラダックの風息.jpg",
                       @"深い河",
                       @"The Dark Knight Rises",
                       @"僕たちは世界を変えることができない。"
                       ]mutableCopy];
    BookData2_NorthAmerica  = [@[
                               @"ジョニーベアー―イエローストーンの子グマ (シートン動物記 1)",
                               @"フォレスト・ガンプ"
                               ]mutableCopy];
    BookData2_SouthAmerica  = [@[
                               @"ボリビアを知るための68章",
                               @"ナスカの壷 ペルーからの手紙",
                               @"エバースマイル・ニュージャージー",
                               @"リヤカーマン アンデスを越える―アタカマ砂漠、アンデス山脈越え1000キロ徒歩横断",
                               @"カールじいさんと空飛ぶ家"
                               ]mutableCopy];
    BookData2_Eourope  = [@[
                          @"北アルプス テントを背中に山の旅へ ",
                          @"地中海の光ベスト50--世界の名景",
                          @"中世都市ドゥブロヴニク―アドリア海の東西交易"
                          ]mutableCopy];
    BookData2_Africa  = [@[
                         @"サハラ砂漠の秘密",
                         @"どくとるアイアイと謎の島マダガスカル"
                         ]mutableCopy];
    BookData2_Oceania  = [@[
                          @"アボリジニの教え―大地と宇宙をつなぐ精霊の知恵",
                          @"くれーじー・ばいきん、オーストラリアをゆく"
                          ]mutableCopy];
    BookData2_AroundTheWorld  = [@[
                                 @"死ぬまでに行きたい! 世界の絶景",
                                 @"旅へ!アジアへ!―ネパール・インド・タイ紀行"                                 ]mutableCopy];
    BookData2 = [@[BookData2_Asia, BookData2_NorthAmerica, BookData2_SouthAmerica,BookData2_Eourope,BookData2_Africa, BookData2_Oceania,BookData2_AroundTheWorld]mutableCopy];
    
    
    //本2の画像
    BookImage2_Asia  = [@[
                          [UIImage imageNamed:@"ダライ・ラマに恋して.jpg"],
                          [UIImage imageNamed:@"ラダックの風息 空の果てで暮らした日々.jpg"],
                          [UIImage imageNamed:@"深い河.jpg"],
                          [UIImage imageNamed:@"ダークナイトライジング.jpg"],
                          [UIImage imageNamed:@"僕たちは世界を変えることができない.jpg"]
                        ]mutableCopy];
    BookImage2_NorthAmerica  =[@[
                                 [UIImage imageNamed:@"ジョニーベアー―イエローストーンの子グマ (シートン動物記 1).jpg"],
                                 [UIImage imageNamed:@"フォレスト・ガンプ .jpg"]
                               ]mutableCopy];
    BookImage2_SouthAmerica  = [@[
                                  [UIImage imageNamed:@"ボリビアを知るための68章.jpg"],
                                  [UIImage imageNamed:@"ナスカの壷　ペルーからの手紙 .jpg"],
                                [UIImage imageNamed:@"エヴァー・スマイル、ニュージャージー.jpg"],
                                [UIImage imageNamed:@"リヤカーマン アンデスを越える―アタカマ砂漠、アンデス山脈越え1000キロ徒歩横断.jpg"],
                                [UIImage imageNamed:@"カールじいさんの空飛ぶ家.jpg"]
                                ]mutableCopy];
    BookImage2_Eourope  =[@[
                            [UIImage imageNamed:@"北アルプス テントを背中に山の旅へ .jpg"],
                            [UIImage imageNamed:@"地中海の光ベスト50--世界の名景.jpg"],
                            [UIImage imageNamed:@"中世都市ドゥブロヴニク―アドリア海の東西交易.jpg"]
                          ]mutableCopy];
    BookImage2_Africa  = [@[
                            [UIImage imageNamed:@"サハラ砂漠の秘密.jpg"],
                            [UIImage imageNamed:@"どくとるアイアイと謎の島マダガスカル.jpg"]
                          ]mutableCopy];
    BookImage2_Oceania  =[@[
                            [UIImage imageNamed:@"アボリジニの教え―大地と宇宙をつなぐ精霊の知恵.jpg"],
                            [UIImage imageNamed:@"くれいじー・ばいきん、オーストラリア.jpg"]
                          ]mutableCopy];
    BookImage2_AroundTheWorld  = [@[
                                    [UIImage imageNamed:@"死ぬまでに行きたい! 世界の絶景.jpg"],
                                    [UIImage imageNamed:@"旅へ！アジアへ！.jpg"]
                                  ]mutableCopy];
    
    BookImage2 = [@[BookImage2_Asia, BookImage2_NorthAmerica, BookImage2_SouthAmerica,BookImage2_Eourope, BookImage2_Africa, BookImage2_Oceania,BookImage2_AroundTheWorld ]mutableCopy];
    
    
    //本2のリンク
    
    BookLink2_Asia = [@[
                      @"http://www.amazon.co.jp/%E3%83%80%E3%83%A9%E3%82%A4%E3%83%BB%E3%83%A9%E3%83%9E%E3%81%AB%E6%81%8B%E3%81%97%E3%81%A6-%E5%B9%BB%E5%86%AC%E8%88%8E%E6%96%87%E5%BA%AB-%E3%81%9F%E3%81%8B%E3%81%AE-%E3%81%A6%E3%82%8B%E3%81%93/dp/4344409795/ref=sr_1_18?s=books&ie=UTF8&qid=1387662704&sr=1-18&keywords=%E3%83%80%E3%83%A9%E3%82%A4%E3%83%A9%E3%83%9E",
                      @"http://www.amazon.co.jp/%E3%83%A9%E3%83%80%E3%83%83%E3%82%AF%E3%81%AE%E9%A2%A8%E6%81%AF-%E7%A9%BA%E3%81%AE%E6%9E%9C%E3%81%A6%E3%81%A7%E6%9A%AE%E3%82%89%E3%81%97%E3%81%9F%E6%97%A5%E3%80%85-P%E2%80%90Vine-BOOKs-%E5%B1%B1%E6%9C%AC%E9%AB%98%E6%A8%B9/dp/486020302X",

                      @"http://www.amazon.co.jp/%E6%B7%B1%E3%81%84%E6%B2%B3-%E8%AC%9B%E8%AB%87%E7%A4%BE%E6%96%87%E5%BA%AB-%E9%81%A0%E8%97%A4-%E5%91%A8%E4%BD%9C/dp/4062632578/ref=sr_1_3?s=books&ie=UTF8&qid=1387663735&sr=1-3&keywords=%E3%82%AC%E3%83%B3%E3%82%B8%E3%82%B9",
                      @"http://www.amazon.co.jp/%E3%83%80%E3%83%BC%E3%82%AF%E3%83%8A%E3%82%A4%E3%83%88-%E3%83%A9%E3%82%A4%E3%82%B8%E3%83%B3%E3%82%B0-Blu-ray-DVD%E3%82%BB%E3%83%83%E3%83%88-%E5%88%9D%E5%9B%9E%E9%99%90%E5%AE%9A%E7%94%9F%E7%94%A3/dp/B005MH1KB4/ref=sr_1_1?s=dvd&ie=UTF8&qid=1387905312&sr=1-1&keywords=The+Dark+Knight+Rises",
                      @"http://www.amazon.co.jp/%E5%83%95%E3%81%9F%E3%81%A1%E3%81%AF%E4%B8%96%E7%95%8C%E3%82%92%E5%A4%89%E3%81%88%E3%82%8B%E3%81%93%E3%81%A8%E3%81%8C%E3%81%A7%E3%81%8D%E3%81%AA%E3%81%84%E3%80%82But-wanna-build-school-Cambodia/dp/4094086269/ref=sr_1_1?s=books&ie=UTF8&qid=1387337952&sr=1-1&keywords=%E4%B8%96%E7%95%8C%E3%82%92%E5%A4%89%E3%81%88%E3%82%8B%E3%81%93%E3%81%A8%E3%81%AF%E3%81%A7%E3%81%8D%E3%81%AA%E3%81%84"
                      ]mutableCopy];
    BookLink2_NorthAmerica = [@[
                              @"http://www.amazon.co.jp/dp/4834006263/ref=rdr_ext_tmb",
                              @"http://www.amazon.co.jp/%E3%83%95%E3%82%A9%E3%83%AC%E3%82%B9%E3%83%88%E3%83%BB%E3%82%AC%E3%83%B3%E3%83%97-DVD-%E3%83%88%E3%83%A0%E3%83%BB%E3%83%8F%E3%83%B3%E3%82%AF%E3%82%B9/dp/B000FBHTOO"
                              ]mutableCopy];
    BookLink2_SouthAmerica = [@[
                              @"http://www.amazon.co.jp/%E3%83%9C%E3%83%AA%E3%83%93%E3%82%A2%E3%82%92%E7%9F%A5%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AE68%E7%AB%A0-%E3%82%A8%E3%83%AA%E3%82%A2%E3%83%BB%E3%82%B9%E3%82%BF%E3%83%87%E3%82%A3%E3%83%BC%E3%82%BA-%E7%9C%9F%E9%8D%8B-%E5%91%A8%E4%B8%89/dp/4750323004",
                              @"http://www.amazon.co.jp/%E3%83%8A%E3%82%B9%E3%82%AB%E3%81%AE%E5%A3%B7-%E3%83%9A%E3%83%AB%E3%83%BC%E3%81%8B%E3%82%89%E3%81%AE%E6%89%8B%E7%B4%99-%E5%8D%98%E8%A1%8C%E6%9C%AC-%E9%A3%AF%E5%B0%BE-%E9%9F%BF%E5%AD%90/dp/4533034845",
                              @"http://www.amazon.co.jp/%E3%82%A8%E3%83%B4%E3%82%A1%E3%83%BC%E3%83%BB%E3%82%B9%E3%83%9E%E3%82%A4%E3%83%AB%E3%80%81%E3%83%8B%E3%83%A5%E3%83%BC%E3%82%B8%E3%83%A3%E3%83%BC%E3%82%B8%E3%83%BC-DVD-%E3%83%80%E3%83%8B%E3%82%A8%E3%83%AB%E3%83%BB%E3%83%87%E3%82%A4-%E3%83%AB%E3%82%A4%E3%82%B9/dp/B000EHQV2U",
                              @"http://www.amazon.co.jp/%E3%83%AA%E3%83%A4%E3%82%AB%E3%83%BC%E3%83%9E%E3%83%B3-%E3%82%A2%E3%83%B3%E3%83%87%E3%82%B9%E3%82%92%E8%B6%8A%E3%81%88%E3%82%8B%E2%80%95%E3%82%A2%E3%82%BF%E3%82%AB%E3%83%9E%E7%A0%82%E6%BC%A0%E3%80%81%E3%82%A2%E3%83%B3%E3%83%87%E3%82%B9%E5%B1%B1%E8%84%88%E8%B6%8A%E3%81%881000%E3%82%AD%E3%83%AD%E5%BE%92%E6%AD%A9%E6%A8%AA%E6%96%AD-%E6%B0%B8%E7%80%AC-%E5%BF%A0%E5%BF%97/dp/4532166470/ref=sr_1_2?s=books&ie=UTF8&qid=1387688128&sr=1-2&keywords=%E3%82%A2%E3%82%BF%E3%82%AB%E3%83%9E",
                              @"http://www.amazon.co.jp/%E3%82%AB%E3%83%BC%E3%83%AB%E3%81%98%E3%81%84%E3%81%95%E3%82%93%E3%81%AE%E7%A9%BA%E9%A3%9B%E3%81%B6%E5%AE%B6-%E3%83%96%E3%83%AB%E3%83%BC%E3%83%AC%E3%82%A4-%E6%9C%AC%E7%B7%A8DVD%E4%BB%98-Blu-ray-%E3%83%87%E3%82%A3%E3%82%BA%E3%83%8B%E3%83%BC/dp/B0037L601W/ref=sr_1_1?ie=UTF8&qid=1387688341&sr=8-1&keywords=%E3%82%AB%E3%83%BC%E3%83%AB%E3%81%98%E3%81%84%E3%81%95%E3%82%93%E3%81%A8%E7%A9%BA%E9%A3%9B%E3%81%B6%E5%AE%B6"
                              ]mutableCopy];
    BookLink2_Eourope = [@[
                         @"http://www.amazon.co.jp/%E5%8C%97%E3%82%A2%E3%83%AB%E3%83%97%E3%82%B9-%E3%83%86%E3%83%B3%E3%83%88%E3%82%92%E8%83%8C%E4%B8%AD%E3%81%AB%E5%B1%B1%E3%81%AE%E6%97%85%E3%81%B8-%E9%AB%98%E6%A9%8B-%E5%BA%84%E5%A4%AA%E9%83%8E/dp/4777923118/ref=sr_1_17?ie=UTF8&qid=1387688813&sr=8-17&keywords=%E3%82%A2%E3%83%AB%E3%83%97%E3%82%B9",
                       @"http://www.amazon.co.jp/product-reviews/4882021633/ref=dp_top_cm_cr_acr_txt?ie=UTF8&showViewpoints=1",
                         @"http://www.amazon.co.jp/%E4%B8%AD%E4%B8%96%E9%83%BD%E5%B8%82%E3%83%89%E3%82%A5%E3%83%96%E3%83%AD%E3%83%B4%E3%83%8B%E3%82%AF%E2%80%95%E3%82%A2%E3%83%89%E3%83%AA%E3%82%A2%E6%B5%B7%E3%81%AE%E6%9D%B1%E8%A5%BF%E4%BA%A4%E6%98%93-%E5%8F%A2%E6%9B%B8%E6%9D%B1%E6%AC%A7-%E3%83%90%E3%83%AA%E3%82%B7%E3%82%A1%E3%83%BB%E3%82%AF%E3%83%AC%E3%82%AD%E3%83%83%E3%83%81/dp/4882021633/ref=sr_1_1?s=books&ie=UTF8&qid=1387903865&sr=1-1&keywords=%E3%83%89%E3%82%A5%E3%83%96%E3%83%AD%E3%83%B4%E3%83%8B%E3%82%AF"
                         ]mutableCopy];
    BookLink2_Africa = [@[
                        @"http://www.amazon.co.jp/%E3%82%B5%E3%83%8F%E3%83%A9%E7%A0%82%E6%BC%A0%E3%81%AE%E7%A7%98%E5%AF%86-%E5%89%B5%E5%85%83SF%E6%96%87%E5%BA%AB-%E3%82%B8%E3%83%A5%E3%83%BC%E3%83%AB%E3%83%BB%E3%83%B4%E3%82%A7%E3%83%AB%E3%83%8C/dp/4488517013/ref=sr_1_62?s=books&ie=UTF8&qid=1387766688&sr=1-62&keywords=%E3%82%B5%E3%83%8F%E3%83%A9",
                        @"http://www.amazon.co.jp/%E3%81%A9%E3%81%8F%E3%81%A8%E3%82%8B%E3%82%A2%E3%82%A4%E3%82%A2%E3%82%A4%E3%81%A8%E8%AC%8E%E3%81%AE%E5%B3%B6%E3%83%9E%E3%83%80%E3%82%AC%E3%82%B9%E3%82%AB%E3%83%AB%E3%80%88%E4%B8%8A%E3%80%89-%E5%B3%B6-%E6%B3%B0%E4%B8%89/dp/4938140314/ref=sr_1_28?s=books&ie=UTF8&qid=1387767150&sr=1-28&keywords=%E3%83%9E%E3%83%80%E3%82%AC%E3%82%B9%E3%82%AB%E3%83%AB"
                        ]mutableCopy];
    BookLink2_Oceania = [@[
                         @"http://www.amazon.co.jp/%E3%82%A2%E3%83%9C%E3%83%AA%E3%82%B8%E3%83%8B%E3%81%AE%E6%95%99%E3%81%88%E2%80%95%E5%A4%A7%E5%9C%B0%E3%81%A8%E5%AE%87%E5%AE%99%E3%82%92%E3%81%A4%E3%81%AA%E3%81%90%E7%B2%BE%E9%9C%8A%E3%81%AE%E7%9F%A5%E6%81%B5-%E6%B5%B7-%E7%BE%8E%E5%A4%AE/dp/4584158797/ref=sr_1_2?s=books&ie=UTF8&qid=1387898019&sr=1-2&keywords=%E3%82%A2%E3%83%9C%E3%83%AA%E3%82%B8%E3%83%8B",
                         @"http://www.amazon.co.jp/%E3%81%8F%E3%82%8C%E3%83%BC%E3%81%98%E3%83%BC%E3%83%BB%E3%81%B0%E3%81%84%E3%81%8D%E3%82%93%E3%80%81%E3%82%AA%E3%83%BC%E3%82%B9%E3%83%88%E3%83%A9%E3%83%AA%E3%82%A2%E3%82%92%E3%82%86%E3%81%8F-%E5%B0%BE%E8%B3%80-%E8%81%A1/dp/4862652840/ref=sr_1_15?s=books&ie=UTF8&qid=1387899356&sr=1-15&keywords=%E3%82%B0%E3%83%AC%E3%83%BC%E3%83%88%E3%82%AA%E3%83%BC%E3%82%B7%E3%83%A3%E3%83%B3%E3%83%AD%E3%83%BC%E3%83%89"
                         ]mutableCopy];
    BookLink2_AroundTheWorld = [@[
                                @"http://www.amazon.co.jp/%E6%AD%BB%E3%81%AC%E3%81%BE%E3%81%A7%E3%81%AB%E8%A1%8C%E3%81%8D%E3%81%9F%E3%81%84-%E4%B8%96%E7%95%8C%E3%81%AE%E7%B5%B6%E6%99%AF-%E8%A9%A9%E6%AD%A9/dp/4861996112/ref=sr_1_38?s=books&ie=UTF8&qid=1387899752&sr=1-38&keywords=%E4%B8%96%E7%95%8C%E4%B8%80%E5%91%A8",
                                @"http://www.amazon.co.jp/%E6%97%85%E3%81%B8-%E3%82%A2%E3%82%B8%E3%82%A2%E3%81%B8-%E2%80%95%E3%83%8D%E3%83%91%E3%83%BC%E3%83%AB%E3%83%BB%E3%82%A4%E3%83%B3%E3%83%89%E3%83%BB%E3%82%BF%E3%82%A4%E7%B4%80%E8%A1%8C-%E8%84%87%E5%8F%A3-%E8%B2%B4%E8%A1%8C/dp/4286002233/ref=sr_1_145?s=books&ie=UTF8&qid=1387901582&sr=1-145&keywords=%E3%82%A2%E3%82%B8%E3%82%A2%E3%80%80%E6%97%85"
                                ]mutableCopy];
    BookLink2 = [@[BookLink2_Asia, BookLink2_NorthAmerica, BookLink2_SouthAmerica, BookLink2_Eourope, BookLink2_Africa, BookLink2_Oceania, BookLink2_AroundTheWorld]mutableCopy];
    
    NSLog(@"BookData2.count = %d", [BookData2 count]);
    
    self.book2Name.text = [BookData2 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow];
    NSLog(@"BookData2.count = %@", [BookData2 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow]);
    
    self.book2Image.image = [BookImage2 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow];
    self.book2Image.contentMode = UIViewContentModeScaleAspectFit;
//    self.book2Image.contentMode = UIViewContentModeCenter;//サイズを自動調整
    self.URL2 = [BookLink2 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow];

    

    //タップ用のビューを作成（ラベルと画像を覆うもの）
    //一つ目の本
    /* ビューを作成 */
    CGRect rect1 = CGRectMake(47, 235, 92, 170);
    UIView *myView1 = [[UIView alloc]initWithFrame:rect1];
    myView1.backgroundColor = [UIColor blueColor];
    [self.view addSubview:myView1];
    myView1.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.0f];
    
    /* シングルタップ */
    UITapGestureRecognizer *tapGesture1 =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(myView1_Tapped:)];
    
    // ビューにジェスチャーを追加
    [myView1 addGestureRecognizer:tapGesture1];
    
    
    //２つ目の本
    /* ビューを作成（二つ目の本） */
    CGRect rect2 = CGRectMake(173, 235, 92, 170);
    UIView *myView2 = [[UIView alloc]initWithFrame:rect2];
    [self.view addSubview:myView2];
    myView2.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.0f];
    /* シングルタップ */
    UITapGestureRecognizer *tapGesture2 =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(myView2_Tapped:)];
    // ビューにジェスチャーを追加
    [myView2 addGestureRecognizer:tapGesture2];
    
    
}


/**
 * 本1（の上の透明ビュー）がタップされたとき
 */
- (void)myView1_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"本1がタップされました．");
  
    count_book1++;
    
    
    [WV1 setDelegate:self];//ウェブビューを作るならこれがないとなんかエラー発生
    
    //半透明の黒いビューを作成
    CGRect Rect_ViewWeb = CGRectMake(0, 0,[[UIScreen mainScreen] bounds].size.width ,[[UIScreen mainScreen] bounds].size.height);
    ViewWeb1 = [[UIView alloc]initWithFrame:Rect_ViewWeb];
    [self.view addSubview:ViewWeb1];
    ViewWeb1.backgroundColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.5f];
    ViewWeb1.center = self.view.center;
    
    
    //半透明の黒いビュー上にwebViewを表示
    // UIWebView例文
    WV1 = [[UIWebView alloc] init];
    WV1.delegate = self;
    WV1.frame = CGRectMake(10, 10,[[UIScreen mainScreen] bounds].size.width-20 ,[[UIScreen mainScreen] bounds].size.height-80);
    WV1.scalesPageToFit = YES;
    [self.view addSubview:WV1];
    
    //角を丸める
    WV1.layer.cornerRadius = 10;
    WV1.clipsToBounds = true;
    
    NSLog(@"actionがタップされました．");
   
    NSURLRequest *req1 = [NSURLRequest requestWithURL:[NSURL URLWithString:self.URL1]];
    [WV1 loadRequest:req1];
    NSLog(@"URL1=%@",self.URL1);
    
    self.webViewLoadingCount=0;
    
    //ナビゲーションバーを隠す
    self.navigationController.navigationBarHidden = YES;
    
    // ツールバーの作成
    self.navigationController.toolbarHidden = NO;
    


    
    //ツールバーにボタンを追加
    //閉じるボタン×追加
    UIBarButtonItem *close = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(close_Tapped:)] ;
    //Actionボタン追加
    UIBarButtonItem *action = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(action_Tapped:)] ;
    //戻るボタン追加
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:WV1 action:@selector (goBack)];
    //進むボタン追加
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:WV1 action:@selector(goForward)] ;
    //フレキシブルスペースの作成
    UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    // toolbarにボタンとラベルをセットする
   NSArray *items =   [NSArray arrayWithObjects:close, space, back, next, space, action, nil];
  self.toolbarItems = items;

}




/**
 * 本2（の上の透明ビュー）がタップされたとき
 */
- (void)myView2_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"本2がタップされました．");
    
    [WV2 setDelegate:self];//ウェブビューを作るならこれがないとなんかエラー発生
    
    //半透明の黒いビューを作成
    CGRect Rect_ViewWeb = CGRectMake(0, 0,[[UIScreen mainScreen] bounds].size.width ,[[UIScreen mainScreen] bounds].size.height);
    ViewWeb2 = [[UIView alloc]initWithFrame:Rect_ViewWeb];
    [self.view addSubview:ViewWeb2];
    ViewWeb2.backgroundColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.5f];
    ViewWeb2.center = self.view.center;
    
    
    //半透明の黒いビュー上にwebViewを表示
    // UIWebView例文
    WV2 = [[UIWebView alloc] init];
    WV2.delegate = self;
    WV2.frame = CGRectMake(10, 10,[[UIScreen mainScreen] bounds].size.width-20 ,[[UIScreen mainScreen] bounds].size.height-80);
    WV2.scalesPageToFit = YES;
    [self.view addSubview:WV2];
    
    //角を丸める
    WV2.layer.cornerRadius = 10;
    WV2.clipsToBounds = true;
    
    NSLog(@"actionがタップされました．");
    
//    NSURLRequest *req2 = [NSURLRequest requestWithURL:self.URL2];
        NSURLRequest *req2 = [NSURLRequest requestWithURL:[NSURL URLWithString:self.URL2]];
    [WV2 loadRequest:req2];
    NSLog(@"URL1=%@",self.URL2);
    
    self.webViewLoadingCount=0;
    
    //ナビゲーションバーを隠す
    self.navigationController.navigationBarHidden = YES;
    
    // ツールバーの作成
    self.navigationController.toolbarHidden = NO;
    
    
    
    
    //ツールバーにボタンを追加
    //閉じるボタン×追加
    UIBarButtonItem *close = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(close_Tapped:)] ;
    //Actionボタン追加
    UIBarButtonItem *action = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(action_Tapped:)] ;
    //戻るボタン追加
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:WV1 action:@selector (goBack)];
    //進むボタン追加
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:WV1 action:@selector(goForward)] ;
    //フレキシブルスペースの作成
    UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    // toolbarにボタンとラベルをセットする
    NSArray *items =   [NSArray arrayWithObjects:close, space, back, next, space, action, nil];
    self.toolbarItems = items;
    
}




//ToolBarのボタンがおされたとき

//×ボタンがタップされたとき
- (void)close_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"closeがタップされました．");
        self.navigationController.toolbarHidden = YES;
    [WV1 removeFromSuperview];
    [ViewWeb1 removeFromSuperview];
    
    //ナビゲーションバーを表示
    self.navigationController.navigationBarHidden = NO;
    
    //もし読み込み中なら
   [self indicatorStop];
    
    
    
    
    
//    WV1.hidden = YES;
//    ViewWeb1.hidden = YES;
    
    
}




//アクションボタンがタップされたとき
- (void)action_Tapped:(UITapGestureRecognizer *)sender{
    NSLog(@"Actionボタンがタップされました．");
    //シェアするもの
    NSString *text = BookData1[0];
     UIImage* image1 = BookImage1[0];
     NSURL *url = [NSURL URLWithString:@"http://d.hatena.ne.jp/tilfin/"];
    NSArray* actItems = [NSArray arrayWithObjects:text,url, image1, nil];
    
    UIActivityViewController *activityView = [[UIActivityViewController alloc] initWithActivityItems:actItems applicationActivities:@[[[SafariActivity alloc] init]]];
     
    
    //表示しないアプリの設定
    NSArray *excludeActivities = @[UIActivityTypePostToWeibo, UIActivityTypeMail, UIActivityTypePrint, UIActivityTypeCopyToPasteboard, UIActivityTypeAssignToContact, UIActivityTypeSaveToCameraRoll];
    activityView.excludedActivityTypes = excludeActivities;
    
    [self presentViewController:activityView animated:YES completion:^{}];

}






//インジケータ
// ページ読込開始時にインジケータをくるくるさせる
-(void)webViewDidStartLoad:(UIWebView*)WV1{
    NSLog(@"start %d",self.webViewLoadingCount);
    self.webViewLoadingCount++;
    NSLog(@"start ++ %d",self.webViewLoadingCount);
    if (self.webViewLoadingCount==1){
     NSLog(@"バーにインジケータを表示しました");
    
        //ビュー上にインジケータ表示
        [self indicatorStart];
        
    }
}



#pragma mark roading view
-(void) indicatorStart {
    
    NSLog(@"indicatorStart");
    //ステータスバーのインジケータ表示
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
    //半透明の黒いビューを作成
    CGRect Rect_IndicatorBackView = CGRectMake(0, 0,[[UIScreen mainScreen] bounds].size.width ,[[UIScreen mainScreen] bounds].size.height);
    _IndicatorBackView = [[UIView alloc]initWithFrame:Rect_IndicatorBackView];
    
    _IndicatorBackView.backgroundColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.5f];
    _IndicatorBackView.center = self.view.center;
    
    [self.view addSubview:_IndicatorBackView];
    
    // 丸みを帯びた土台となるViewをつくる
    _loadingView = [[UIView alloc] initWithFrame:CGRectMake(60,100,200,110)];
    [_loadingView setBackgroundColor:[UIColor lightGrayColor]];
    _loadingView.layer.cornerRadius = 10;
    _loadingView.clipsToBounds = YES;
    [_loadingView setAlpha:0.0];
    [_IndicatorBackView addSubview:_loadingView];
    
    
    // indicator(処理中を知らせるためのクルクル回るあれ)をつくる
    _indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    [_indicatorView setFrame:CGRectMake (79, 15, 40, 40)];
    [_indicatorView setAlpha:0.0];
    [_loadingView addSubview:_indicatorView];
    
    
    // 処理中のコメント表示用ラベルをつくる
    _processinglabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 26, 200,90)];
    _processinglabel.text = @"読み込み中...";
    _processinglabel.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:18.0f];
    _processinglabel.textAlignment = 1;
    _processinglabel.backgroundColor = [UIColor clearColor];
    _processinglabel.textColor = [UIColor whiteColor];
    [_processinglabel setAlpha:0.0];
    [_loadingView addSubview:_processinglabel];
    
    [_indicatorView startAnimating];
    
    // 0.5秒かけてフワッとローディング画面がでるようにするアニメーション
    [UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.5];
    [_loadingView setAlpha:0.4];
    [_indicatorView setAlpha:1.0];
    [_processinglabel setAlpha:1.0];
	[UIView commitAnimations];
}

-(void) indicatorStop {
    // ストップメソッド
    NSLog(@"indicatorStop");
    [_indicatorView stopAnimating];
    [_IndicatorBackView removeFromSuperview];
    [_loadingView removeFromSuperview];
    //ステータスバーのインジケータ表示
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

#pragma mark -








// ページ読込完了時にインジケータを非表示にする
-(void)webViewDidFinishLoad:(UIWebView*)WV1{
       
    NSLog(@"finish %d",self.webViewLoadingCount);
    self.webViewLoadingCount--;
     NSLog(@"webViewが読み込みを終了しました");
    NSLog(@"finish -- %d",self.webViewLoadingCount);
    if (self.webViewLoadingCount == 0) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        _IndicatorBackView.hidden = YES;
        
         [self indicatorStop];
	}
}


//これ必要？？
- (void)webView:(UIWebView *)WV1 didFailLoadWithError:(NSError *)error {
	self.webViewLoadingCount--;

	[UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
    // Load complete with error
}









/**
 * ビューがタップされたとき
 */
- (void)back_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"本2がタップされました．");
//    NSString *urlString = @"http://www.google.co.jp";
//    NSURL *url = [NSURL URLWithString:urlString];
//    [[UIApplication sharedApplication] openURL:url];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
