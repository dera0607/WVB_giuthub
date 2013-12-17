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
    self.sImageView.image = appDelegate.Pass_NameImage;
    
    
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
    BookData1_Asia  = [@[@"本1：アジアの1行目",@"本1：アジアの2行目"]mutableCopy];
    BookData1_NorthAmerica  = [@[@"本1：北米の1行目",@"本1：北米の2行目",@"本1：北米の3行目"]mutableCopy];
    BookData1_SouthAmerica  = [@[@"本1：南米の1行目",@"本1：南米の2行目",@"本1：南米の3行目"]mutableCopy];
    BookData1 = [@[BookData1_Asia, BookData1_NorthAmerica, BookData1_SouthAmerica]mutableCopy];
    
    
    //本1の画像
    BookImage1_Asia  = [@[[UIImage imageNamed:@"ウユニ塩湖弾丸ツアー.jpg"],[UIImage imageNamed:@"ウユニ塩湖弾丸ツアー.jpg"]]mutableCopy];
    BookImage1_NorthAmerica  =[@[[UIImage imageNamed:@"ウユニ塩湖弾丸ツアー.jpg"],[UIImage imageNamed:@"ウユニ塩湖弾丸ツアー.jpg"],[UIImage imageNamed:@"ウユニ塩湖弾丸ツアー.jpg"]]mutableCopy];
    BookImage1_SouthAmerica  = [@[[UIImage imageNamed:@"ウユニ塩湖弾丸ツアー.jpg"],[UIImage imageNamed:@"ウユニ塩湖弾丸ツアー.jpg"],[UIImage imageNamed:@"ウユニ塩湖弾丸ツアー.jpg"]]mutableCopy];
    BookImage1 = [@[BookImage1_Asia, BookImage1_NorthAmerica, BookImage1_SouthAmerica]mutableCopy];

    
     //本1のリンク
    
    BookLink1_Asia = [@[@"http://www.amazon.co.jp/%E3%82%A6%E3%83%A6%E3%83%8B%E5%A1%A9%E6%B9%96-%E5%BC%BE%E4%B8%B8%E3%83%84%E3%82%A2%E3%83%BC-%E9%8E%8C%E7%94%B0-%E6%99%83-ebook/dp/B00EQ56PF4",@"http://dev.classmethod.jp/smartphone/iphone/ios-modern-nsarray/"]mutableCopy];
    BookLink1_NorthAmerica = [@[@"http://www.amazon.co.jp/%E3%82%A6%E3%83%A6%E3%83%8B%E5%A1%A9%E6%B9%96-%E5%BC%BE%E4%B8%B8%E3%83%84%E3%82%A2%E3%83%BC-%E9%8E%8C%E7%94%B0-%E6%99%83-ebook/dp/B00EQ56PF4",@"http://dev.classmethod.jp/smartphone/iphone/ios-modern-nsarray/",@"http://www.geeksonabeach.com/"]mutableCopy];
    BookLink1_SouthAmerica = [@[@"http://www.amazon.co.jp/%E3%82%A6%E3%83%A6%E3%83%8B%E5%A1%A9%E6%B9%96-%E5%BC%BE%E4%B8%B8%E3%83%84%E3%82%A2%E3%83%BC-%E9%8E%8C%E7%94%B0-%E6%99%83-ebook/dp/B00EQ56PF4",@"http://dev.classmethod.jp/smartphone/iphone/ios-modern-nsarray/",@"http://dev.classmethod.jp/smartphone/iphone/ios-modern-nsarray/",@"http://www.geeksonabeach.com/"]mutableCopy];
    
    BookLink1 = [@[BookLink1_Asia, BookLink1_NorthAmerica, BookLink1_SouthAmerica]mutableCopy];
    
   
    //本1の表示
    //本の名前
     NSLog(@"BookData1.count = %d", [BookData1 count]);
    NSLog(@"本１の名前は%@です", [BookData1 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow]);
    self.book1Name.text = [BookData1 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow];
    NSLog(@"本１の名前入れました");
    //本の画像

    self.book1Image.image = [BookImage1 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow];
    NSLog(@"本１の画像入れました");
    NSLog(@"本１の画像データは%@です", [BookImage1 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow]);
    
    //本のリンク
    self.URL1 = [BookLink1 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow];
    NSLog(@"本１のリンク入れました");
    
    //*２つ目の本*//
    //本2の名前
    NSLog(@"BookData2に文字を入れます");
    
    //本2の名前
    BookData2_Asia  = [@[@"本2：アジアの2行目",@"本2：アジアの2行目"]mutableCopy];
    BookData2_NorthAmerica  = [@[@"本2：北米の1行目",@"本2：北米の2行目",@"本2：北米の3行目"]mutableCopy];
    BookData2_SouthAmerica  = [@[@"本2：南米の1行目",@"本2：南米の2行目",@"本2：南米の3行目"]mutableCopy];
    BookData2 = [@[BookData2_Asia, BookData2_NorthAmerica, BookData2_SouthAmerica]mutableCopy];
    
    
    //本2の画像
    BookImage2_Asia  = [@[[UIImage imageNamed:@"ウユニ.jpg"],[UIImage imageNamed:@"ウユニ.jpg"]]mutableCopy];
    BookImage2_NorthAmerica  =[@[[UIImage imageNamed:@"ウユニ.jpg"],[UIImage imageNamed:@"ウユニ.jpg"],[UIImage imageNamed:@"ウユニ.jpg"]]mutableCopy];
    BookImage2_SouthAmerica  = [@[[UIImage imageNamed:@"ウユニ.jpg"],[UIImage imageNamed:@"ウユニ.jpg"],[UIImage imageNamed:@"ウユニ.jpg"]]mutableCopy];
    BookImage2 = [@[BookImage2_Asia, BookImage2_NorthAmerica, BookImage2_SouthAmerica]mutableCopy];
    
    
    //本2のリンク
    
    BookLink2_Asia = [@[@"http://www.amazon.co.jp/%E3%82%A6%E3%83%A6%E3%83%8B%E5%A1%A9%E6%B9%96-%E5%BC%BE%E4%B8%B8%E3%83%84%E3%82%A2%E3%83%BC-%E9%8E%8C%E7%94%B0-%E6%99%83-ebook/dp/B00EQ56PF4",@"http://dev.classmethod.jp/smartphone/iphone/ios-modern-nsarray/"]mutableCopy];
    BookLink2_NorthAmerica = [@[@"http://www.amazon.co.jp/%E3%82%A6%E3%83%A6%E3%83%8B%E5%A1%A9%E6%B9%96-%E5%BC%BE%E4%B8%B8%E3%83%84%E3%82%A2%E3%83%BC-%E9%8E%8C%E7%94%B0-%E6%99%83-ebook/dp/B00EQ56PF4",@"http://dev.classmethod.jp/smartphone/iphone/ios-modern-nsarray/",@"http://www.geeksonabeach.com/"]mutableCopy];
    BookLink2_SouthAmerica = [@[@"http://www.amazon.co.jp/%E3%82%A6%E3%83%A6%E3%83%8B%E5%A1%A9%E6%B9%96-%E5%BC%BE%E4%B8%B8%E3%83%84%E3%82%A2%E3%83%BC-%E9%8E%8C%E7%94%B0-%E6%99%83-ebook/dp/B00EQ56PF4",@"http://dev.classmethod.jp/smartphone/iphone/ios-modern-nsarray/",@"http://dev.classmethod.jp/smartphone/iphone/ios-modern-nsarray/",@"http://www.geeksonabeach.com/"]mutableCopy];
    BookLink2 = [@[BookLink2_Asia, BookLink2_NorthAmerica, BookLink2_SouthAmerica]mutableCopy];
    
    NSLog(@"BookData2.count = %d", [BookData2 count]);
    
    self.book2Name.text = [BookData2 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow];
    NSLog(@"BookData2.count = %@", [BookData2 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow]);
    
    self.book2Image.image = [BookImage2 [appDelegate.SelectedSection] objectAtIndex:appDelegate.SelectedRow];
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
//    WV1.center = self.view.center;
    WV1.scalesPageToFit = YES;
    [self.view addSubview:WV1];
    
    //角を丸める
    WV1.layer.cornerRadius = 10;
    WV1.clipsToBounds = true;
    
    NSLog(@"actionがタップされました．");
   
    NSURLRequest *req1 = [NSURLRequest requestWithURL:self.URL1];
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
    //    WV1.center = self.view.center;
    WV2.scalesPageToFit = YES;
    [self.view addSubview:WV2];
    
    //角を丸める
    WV2.layer.cornerRadius = 10;
    WV2.clipsToBounds = true;
    
    NSLog(@"actionがタップされました．");
    
    NSURLRequest *req2 = [NSURLRequest requestWithURL:self.URL2];
    [WV2 loadRequest:req2];
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
