//
//  ViewController.m
//  WVB
//
//  Created by NexSeed on 13/11/28.
//  Copyright (c) 2013年 NexSeed. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "secondViewController.h" //これ必要？

#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]//色のための定義

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.navigationController.navigationBar.tintColor =RGBA(139, 115, 85, 1.0);

    
// //ナビゲーションバーの色とか変更用？
//    if ([self respondsToSelector:@selector(setNeedsStatusBarAppearanceUpdate)]) {
//        //viewControllerで制御することを伝える。iOS7 からできたメソッド
//        [self setNeedsStatusBarAppearanceUpdate];
//    [UINavigationBar appearance].titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    [UINavigationBar appearance].barTintColor = RGBA(139, 115, 85, 1.0);
//    [UIColor colorWithRed:1.000 green:0.549 blue:0.890 alpha:1.000];
    
    self.TV.dataSource=self;
    self.TV.delegate=self;
    NSLog(@"デリゲートとデータソース終了");
    
    //背景の設定
    
  
    
    AreaName = @[@"1.アジア",@"2.北米",@"3.南米",@"4.ヨーロッパ",@"5.アフリカ",@"6.オセアニア",@"7.その他広域"];
    NSLog(@"AreaName終了");    
    
    //1つ目のセクション:アジア のセル名
    Asia1_NameData = [@[@"チベット/中国", @"ラダック/インド", @"バラナシ/インド",@"ジョードプル/インド",@"プノンペン/カンボジア"]mutableCopy];
    NSLog(@"Asia1_NameData を配列に格納");
    Asia1_ImageData = [@[[UIImage imageNamed:@"チベット.jpg"],[UIImage imageNamed:@"ラダック.jpeg"],[UIImage imageNamed:@"ガンジス.jpg"],[UIImage imageNamed:@"ジョードプル.jpeg"],[UIImage imageNamed:@"プノンペン.jpeg"]] mutableCopy];
    NSLog(@"Asia1_NameとImageのデータを配列に格納");
    
    //２つ目のセクション:北米 のセル名
    NorthAmerica2_NameData = [@[@"イエローストーン/アメリカ",@"モニュメントバレー/アメリカ"]mutableCopy];
    NorthAmerica2_ImageData = [@[[UIImage imageNamed:@"イエローストーン.png"],[UIImage imageNamed:@"アンテロープキャニオン.jpeg"]] mutableCopy];
    NSLog(@"NorthAmerica_NameとImageのデータを配列に格納");
    
    //３つ目のセクション:南米 のセル名
    SouthAmerica3_NameData = [@[@"ウユニ/ボリビア",@"マチュピチュ/ペルー",@"ペリト・モレノ/アルゼンチン", @"アタカマ砂漠/チリ", @"ロライマ山/ベネズエラ"]mutableCopy];
    SouthAmerica3_ImageData = [@[[UIImage imageNamed:@"ウユニ.jpg"],[UIImage imageNamed:@"マチュピチュ.jpeg"],[UIImage imageNamed:@"ペリトモレノ.jpg"],[UIImage imageNamed:@"アタカマ砂漠.jpg"],[UIImage imageNamed:@"ロライマ山.jpeg"]] mutableCopy];
    NSLog(@"SouthAmerica_NameとImageのデータを配列に格納");
 
    //４つ目のセクション:ヨーロッパ のセル名
    Eourope4_NameData = [@[@"アルプス/スイス",@"ナバイオビーチ/ギリシャ", @"ドブロブニク/クロアチア"]mutableCopy];
    Eourope4_ImageData = [@[[UIImage imageNamed:@"アルプス.jpeg"],[UIImage imageNamed:@"ナバイオビーチ.png"],[UIImage imageNamed:@"ドブロブニク.png"]] mutableCopy];
    NSLog(@"Eourope_NameとImageのデータを配列に格納");
    
    //５つ目のセクション:アフリカ のセル名
    Africa5_NameData = [@[@"サハラ砂漠/モロッコ,モーリタニア,アルジェリア",@"バオバブ並木/マダガスカル"]mutableCopy];
    Africa5_ImageData = [@[[UIImage imageNamed:@"サハラ砂漠.jpeg"],[UIImage imageNamed:@"マダガスカル.jpg"]] mutableCopy];
    NSLog(@"Africa_NameとImageのデータを配列に格納");
    
    //６つ目のセクション:オセアニア のセル名
    Oceania6_NameData = [@[@"エアーズロック/オーストラリア",@"グレートオーシャンロード/オーストラリア"]mutableCopy];
    Oceania6_ImageData = [@[[UIImage imageNamed:@"エアーズロック.jpg"],[UIImage imageNamed:@"グレートオーシャンロード.jpeg"]] mutableCopy];
    NSLog(@"Oceania_NameとImageのデータを配列に格納");
    
    //７つ目のセクション:その他広域 のセル名
    AroundTheWorld7_NameData = [@[@"世界一周",@"アジア"]mutableCopy];
    AroundTheWorld7_ImageData = [@[[UIImage imageNamed:@"地球.jpg"],[UIImage imageNamed:@"アジア.jpg"]] mutableCopy];
    NSLog(@"AroundTheWorld_NameとImageのデータを配列に格納");
    
    
    
    //各データ配列の配列を作成
    NameData = @[Asia1_NameData, NorthAmerica2_NameData, SouthAmerica3_NameData, Eourope4_NameData, Africa5_NameData, Oceania6_NameData, AroundTheWorld7_NameData];
    NSLog(@"NameData");
    ImageData = @[Asia1_ImageData, NorthAmerica2_ImageData, SouthAmerica3_ImageData, Eourope4_ImageData, Africa5_ImageData,Oceania6_ImageData, AroundTheWorld7_ImageData];
    NSLog(@"ImageData");


    
    UIImage* MapImage =[UIImage imageNamed:@"WorldMap.gif"];
    UIImageView* map_imageview =[[UIImageView alloc]initWithImage:MapImage];
    CGRect rect_map = CGRectMake(0, 64, 320, 180);
    map_imageview.frame = rect_map;
    [self.view addSubview:map_imageview];
    [self.view sendSubviewToBack:map_imageview];//ビューを再背面に
    
//    self.Map.image = [UIImage imageNamed:@"WorldMap.gif"];
//    self.Map.frame = CGRectMake(160, 64, 320, 480);
//    [self.view addSubview:self.Map];
    //     CGRect rect_map = CGRectMake(0, 160, self.view.frame.size.width, self.view.frame.size.height);

//    self.TV.frame = CGRectMake(0, 160, 320, 480);
//    NSLog(@"TVとMapのサイズ指定");
    
    

#pragma mark transparent button 

    //透明ボタン（1.アジア）青
    /* ビューを作成 */
    CGRect Rect_Asia = CGRectMake(205, 45+64, 70, 50);
    UIView *View_Asia = [[UIView alloc]initWithFrame:Rect_Asia];
    View_Asia.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.5];
    [self.view addSubview:View_Asia];
    [self.view bringSubviewToFront:View_Asia];//ビューを最前面に
    /* シングルタップ */
    UITapGestureRecognizer *tapGesture_Asia =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(Asia_Tapped:)];
    
    // ビューにジェスチャーを追加
    [View_Asia addGestureRecognizer:tapGesture_Asia];
    
    NSLog(@"アジアの透明ボタン設置" );
    
    
    
    //透明ボタン（2.北米）赤
    /* ビューを作成 */
    CGRect Rect_NorthAmerica = CGRectMake(10, 5+64, 135, 69);
    UIView *View_NorthAmerica = [[UIView alloc]initWithFrame:Rect_NorthAmerica];
    View_NorthAmerica.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.0];
    [self.view addSubview:View_NorthAmerica];
    
    /* シングルタップ */
    UITapGestureRecognizer *tapGesture_NorthAmeria =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(NorthAmerica_Tapped:)];
    
    // ビューにジェスチャーを追加
    [View_NorthAmerica addGestureRecognizer:tapGesture_NorthAmeria];

    NSLog(@"北米の透明ボタン設置" );
    
    
    //透明ボタン（3.南米）緑
    /* ビューを作成 */
    CGRect Rect_SouthAmerica = CGRectMake(80, 75+64, 60, 70);
    UIView *View_SouthAmerica = [[UIView alloc]initWithFrame:Rect_SouthAmerica];
    View_SouthAmerica.backgroundColor = [UIColor colorWithRed:0.0 green:1.0 blue:0.0 alpha:0.0];
    [self.view addSubview:View_SouthAmerica];
    [self.view bringSubviewToFront:View_SouthAmerica];//ビューを最前面に
    /* シングルタップ */
    UITapGestureRecognizer *tapGesture_SouthAmerica =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(SouthAmerica_Tapped:)];
    
    // ビューにジェスチャーを追加
    [View_SouthAmerica addGestureRecognizer:tapGesture_SouthAmerica];
    NSLog(@"南米の透明ボタン設置" );
    
    
    //透明ボタン（4.ヨーロッパ）黒
    /* ビューを作成 */
    CGRect Rect_Eourope = CGRectMake(150, 15+64, 65, 45);
    UIView *View_Eourope = [[UIView alloc]initWithFrame:Rect_Eourope];
    View_Eourope.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    [self.view addSubview:View_Eourope];
    [self.view bringSubviewToFront:View_Eourope];//ビューを最前面に
    /* シングルタップ */
    UITapGestureRecognizer *tapGesture_Eourope =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(Eourope_Tapped:)];
    
    // ビューにジェスチャーを追加
    [View_Eourope addGestureRecognizer:tapGesture_Eourope];
    NSLog(@"ヨーロッパの透明ボタン設置" );
    
    //透明ボタン（5.アフリカ）白
    /* ビューを作成 */
    CGRect Rect_Africa = CGRectMake(145, 60+64, 55, 60);
    UIView *View_Africa = [[UIView alloc]initWithFrame:Rect_Africa];
    View_Africa.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    [self.view addSubview:View_Africa];
    [self.view bringSubviewToFront:View_Africa];//ビューを最前面に
    /* シングルタップ */
    UITapGestureRecognizer *tapGesture_Africa =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(Africa_Tapped:)];
    
    // ビューにジェスチャーを追加
    [View_Africa addGestureRecognizer:tapGesture_Africa];
    NSLog(@"アフリカの透明ボタン設置" );
    
    //透明ボタン（6.オセアニア）黄色
    /* ビューを作成 */
    CGRect Rect_Oceania = CGRectMake(240, 95+64, 70, 40);
    UIView *View_Oceania = [[UIView alloc]initWithFrame:Rect_Oceania];
    View_Oceania.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:0.0 alpha:0.0];
    [self.view addSubview:View_Oceania];
    [self.view bringSubviewToFront:View_Oceania];//ビューを最前面に
    /* シングルタップ */
    UITapGestureRecognizer *tapGesture_Oceania =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(Oceania_Tapped:)];
    
    // ビューにジェスチャーを追加
    [View_Oceania addGestureRecognizer:tapGesture_Oceania];
    NSLog(@"オセアニアの透明ボタン設置" );
    
    //透明ボタン（7.世界一周）ピンク
    /* ビューを作成 */
    UIScreen *sc = [UIScreen mainScreen];
    CGRect rect = sc.bounds;
    
    CGRect Rect_AroundTheWorld = CGRectMake(0, 0+64, rect.size.width, 200);
    UIView *View_AroundTheWorld = [[UIView alloc]initWithFrame:Rect_AroundTheWorld];
    View_AroundTheWorld.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:1.0 alpha:0.0];
    [self.view addSubview:View_AroundTheWorld];
    [self.view sendSubviewToBack:View_AroundTheWorld];//ビューを再背面に
    [self.view sendSubviewToBack:self.Map];//ビューを再背面に
    [self.view sendSubviewToBack:map_imageview];
//    self.Map.image = [UIImage imageNamed:@"WorldMap.gif"];
    /* シングルタップ */
    UITapGestureRecognizer *tapGesture_AroundTheWorld =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(AroundTheWorld_Tapped:)];
    
    // ビューにジェスチャーを追加
    [View_AroundTheWorld addGestureRecognizer:tapGesture_AroundTheWorld];
    NSLog(@"世界一周の透明ボタン設置" );
#pragma mark -
    

#pragma mark advertisement
    
    // iAd を生成
    adView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
    
    // 画面(ビュー)の下に表示する場合
 //adView.frame = CGRectMake(0, self.view.frame.size.height - adView.frame.size.height, adView.frame.size.width, adView.frame.size.height);
    
    // adViewのフレーム矩形が変更された時にサブビューのサイズを自動的に変更
    adView.autoresizesSubviews = YES;
    
    // 横向き、縦向きに回転した際に、自動的に広告の横幅を調整し、画面上に固定
    // ※画面下に表示する場合は、コメントアウト。
    adView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
    
    // 横向き、縦向きに回転した際に、自動的に広告の横幅を調整し、画面下に固定
    // ※画面上に表示する場合は、コメントアウト。
    //adView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    
    // 非表示にしておく
    adView.alpha = 0.0f;
    
    // ビューに追加
    [self.view addSubview:adView];
    
    // デリゲートをこの UIViewContoroller に渡す
    adView.delegate = self;

#pragma mark -

}


#pragma mark number of section
//セクションの数を指定
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
     NSLog(@"セクション数=%d",AreaName.count );
    return AreaName.count;
}
#pragma mark -



//セルの数を指定
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    
    NSLog(@"セル数設定");
//    NSLog(@"NameDataのアジアのセル数=%d", [NameData[0] count]);
//    NSLog(@"NameDataの北米のセル数=%d", [NameData[1] count]);
//    NSLog(@"NameDataの南米のセル数=%d", [NameData[2] count]);
//    NSLog(@"NameDataのヨーロッパのセル数=%d", [NameData[3] count]);
//    NSLog(@"NameDataのアフリカのセル数=%d", [NameData[4] count]);
//    NSLog(@"NameDataのオセアニアのセル数=%d", [NameData[5] count]);
//    NSLog(@"NameDataの世界一周のセル数=%d", [NameData[6] count]);
    
    NSLog(@"セクション=%d番目の処理中", section);
    NSLog(@"セル数=%d", [NameData[section] count]);
    
    return  [NameData[section] count];

}


//セクションのタイトルをつける
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSLog(@"AreaNameの%d番目タイトル=%@", section, AreaName[section]);
    return AreaName[section];
}




//指定されたインデックスパスのセルを作成する（これは遷移関係なし）
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"TVC";
    
    //TableViewが標準で持っているcellを作成する
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //セルが作成されていなければ、初期化したセルを作成
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    
    
    // セルにテキストとイメージを設定
     NSLog(@"%d番目のセクションの%d番目のセルに文字とイメージを入れる", indexPath.section,indexPath.row);

    cell.textLabel.text = [NameData[indexPath.section] objectAtIndex:indexPath.row];
    cell.imageView.image = [ImageData[indexPath.section] objectAtIndex:indexPath.row];
    
    NSLog(@"テキストと画像はいりました");
    
    return cell;//これ、セルの表示に必要！
}



//TableViewのセルの色を交互に変更
- (void)tableView:(UITableView *)tableView
  willDisplayCell:(UITableViewCell *)cell
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // For even
    if (indexPath.row % 2 == 0) {
        cell.backgroundColor = RGBA(245, 245, 220, 0.5);//Beige
    }
    // For odd
    else {
        cell.backgroundColor = RGBA(245, 222, 179, 0.5);//Wheat
    }
}

//TableViewの高さを変更
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}









//cell置かないver. セルが選択されたときのイベント取得（遷移）
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    secondViewController *SecondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    //secondViewControllerクラス（StoryBoardの右で設定）のSecondVewControllerを作成し、IDがsecondVewController（StoryBoardの右で設定）と一致するものと結びつける。セグウェイで繋がっていないので、secondViewControllerのID一致必要。
    
    
    AppDelegate *appDelegete = [[UIApplication sharedApplication] delegate];
    appDelegete.Pass_NameData = [NameData[indexPath.section] objectAtIndex:indexPath.row];
    appDelegete.Pass_NameImage = [ImageData[indexPath.section] objectAtIndex:indexPath.row];
    
    NSLog(@"indexPath.section = %d",indexPath.section);
    NSLog(@"indexPath.row = %d",indexPath.row);
    
    //secondViewControllerの本のデータ取得用
    appDelegete.SelectedSection = indexPath.section;
    appDelegete.SelectedRow = indexPath.row;
    
    
    
    NSLog(@"appDelegete.SelectedSection = %d",appDelegete.SelectedSection);
    NSLog(@"appDelegete.SelectedRow = %d",appDelegete.SelectedRow);
    
//        SecondViewController.myStrName = NameData[self.TV.indexPathForSelectedRow.row];
//        SecondViewController.myStrImage = ImageData[self.TV.indexPathForSelectedRow.row];
    

    [self.navigationController pushViewController:SecondViewController animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];//選択解除

}




////cell置くver. セルが選択されたときのイベント取得（遷移）※StoryBoard上でセグウェイ繋いだらここなくても遷移はする。データが移行しないだけ。
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([[segue identifier] isEqualToString:@"MoveToSecond"]){
////        NSIndexPath *indexPath = [self.TV indexPathForSelectedRow];
//// セグウェイで繋がっているので、secondViewControllerのID一致をしなくてよい。
//        NSLog(@"遷移します");
//        secondViewController *SecondViewController = [segue destinationViewController];
////         NSLog(@"%d番目のセクションの%d番目のセルから遷移",self.TV.indexPathForSelectedSection.section, self.TV.indexPathForSelectedRow.row);
//
//     NSLog(@"セクションの%d番目のセルに文字とイメージをうつす準備をする", self.TV.indexPathForSelectedRow.row);
//        
//        SecondViewController.myStrName = NameData[self.TV.indexPathForSelectedRow.row];
//        SecondViewController.myStrImage = ImageData[self.TV.indexPathForSelectedRow.row];
//    }
//}



////デザイン変更
////色の変更
////ステータスバーの文字色変更
//- (UIStatusBarStyle)preferredStatusBarStyle {
//    //文字を白くする
//    return UIStatusBarStyleLightContent;
//}

//TableViewの色、フォント等変更

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *View_SectionTitle = [[UIView alloc] init];
//    [View_SectionTitle setBackgroundColor:RGBA(0, 0, 0, 1.0)];
    View_SectionTitle.backgroundColor = RGBA(139, 115, 85, 1.0);
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 0.0f, 320.0f, 22.0f)];
    lbl.backgroundColor = RGBA(139, 115, 85, 1.0);
    lbl.textColor = RGBA(256, 256, 256, 1.0);
    lbl.text =AreaName[section];
//    [NSString stringWithFormat:AreaName[section]];
    [View_SectionTitle addSubview:lbl];
    return View_SectionTitle;
}




/** * ビューがタップされたとき（1.アジア）*/
- (void)Asia_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"アジアがタップされました．");
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.TV scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
}

/*** ビューがタップされたとき（2.北米）*/
- (void)NorthAmerica_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"北米タップされました．");
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:1];
    [self.TV scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
}

/*** ビューがタップされたとき（3.南米）*/
- (void)SouthAmerica_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"南米タップされました．");
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:2];
    [self.TV scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
}

/*** ビューがタップされたとき（4.ヨーロッパ）*/
- (void)Eourope_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"北米タップされました．");
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:3];
    [self.TV scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
}

/*** ビューがタップされたとき（5.アフリカ）*/
- (void)Africa_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"アフリカタップされました．");
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:4];
    [self.TV scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
}

/*** ビューがタップされたとき（6.オセアニア）*/
- (void)Oceania_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"オセアニアタップされました．");
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:5];
    [self.TV scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
}

/*** ビューがタップされたとき（7.世界一周）*/
- (void)AroundTheWorld_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"世界一周タップされました．");
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:6];
    [self.TV scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
}





#pragma mark ad view
// iAdの受信に成功したとき
-(void)bannerViewDidLoadAd:(ADBannerView *)banner {
    // バナーが表示されていない場合
    if ( !bannerIsVisible ) {
        // 表示
        banner.alpha = 1.0f;
    }
    // フラグをYESに
    bannerIsVisible = YES;
}

// iAdの受信に失敗したとき
-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    // バナーが表示されている場合
    if ( bannerIsVisible ) {
        // 非表示
        banner.alpha = 0.0f;
    }
    // フラグをNOに
    bannerIsVisible = NO;
}
#pragma mark -



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
