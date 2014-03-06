//
//  AppDelegate.m
//  140302TravelAndBook
//
//  Created by NexSeed on 2014/03/02.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize Pass_NameData;
@synthesize Pass_NameImage;
@synthesize Pass_Area;
@synthesize SelectedSection;
@synthesize SelectedRow;

//データ入力用
@synthesize AreaName = AreaName;
@synthesize AreaPlace;

@synthesize NameData;
@synthesize subNameData;
@synthesize ImageData;

@synthesize Asia1_NameData;
@synthesize Asia1_subNameData;
@synthesize Asia1_ImageData;

@synthesize NorthAmerica2_NameData;
@synthesize NorthAmerica2_subNameData;
@synthesize NorthAmerica2_ImageData;

@synthesize SouthAmerica3_NameData;
@synthesize SouthAmerica3_subNameData;
@synthesize SouthAmerica3_ImageData;

@synthesize Eourope4_NameData;
@synthesize Eourope4_subNameData;
@synthesize Eourope4_ImageData;

@synthesize Africa5_NameData;
@synthesize Africa5_subNameData;
@synthesize Africa5_ImageData;

@synthesize Oceania6_NameData;
@synthesize Oceania6_subNameData;
@synthesize Oceania6_ImageData;

@synthesize AroundTheWorld7_NameData;
@synthesize AroundTheWorld7_subNameData;
@synthesize AroundTheWorld7_ImageData;



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

#pragma mark Data
    //データの入れ込み
    
    AreaName = @[@"1.アジア",@"2.北米",@"3.南米",@"4.ヨーロッパ",@"5.アフリカ",@"6.オセアニア",@"7.その他広域"];
    NSLog(@"AreaName終了");
    
    //1つ目のセクション:アジア のセル名
    Asia1_NameData = [@[@"チベット", @"ラダック", @"バラナシ",@"ジョードプル",@"プノンペン"]mutableCopy];
    Asia1_subNameData = [@[@"中国", @"インド", @"インド",@"インド",@"カンボジア"]mutableCopy];
    NSLog(@"Asia1_NameData を配列に格納");
    Asia1_ImageData = [@[[UIImage imageNamed:@"チベット.jpg"],[UIImage imageNamed:@"ラダック.jpeg"],[UIImage imageNamed:@"ガンジス.jpg"],[UIImage imageNamed:@"ジョードプル.jpeg"],[UIImage imageNamed:@"プノンペン.jpeg"]] mutableCopy];
    NSLog(@"Asia1_NameとImageのデータを配列に格納");
    
    //２つ目のセクション:北米 のセル名
    NorthAmerica2_NameData = [@[@"イエローストーン",@"モニュメントバレー"]mutableCopy];
    NorthAmerica2_subNameData = [@[@"アメリカ",@"アメリカ"]mutableCopy];
    NorthAmerica2_ImageData = [@[[UIImage imageNamed:@"イエローストーン.png"],[UIImage imageNamed:@"アンテロープキャニオン.jpeg"]] mutableCopy];
    NSLog(@"NorthAmerica_NameとImageのデータを配列に格納");
    
    //３つ目のセクション:南米 のセル名
    SouthAmerica3_NameData = [@[@"ウユニ",@"マチュピチュ",@"ペリト・モレノ", @"アタカマ砂漠", @"ロライマ山"]mutableCopy];
    SouthAmerica3_subNameData = [@[@"ボリビア",@"ペルー",@"アルゼンチン", @"チリ", @"ベネズエラ"]mutableCopy];
    SouthAmerica3_ImageData = [@[[UIImage imageNamed:@"ウユニ.jpg"],[UIImage imageNamed:@"マチュピチュ.jpeg"],[UIImage imageNamed:@"ペリトモレノ.jpg"],[UIImage imageNamed:@"アタカマ砂漠.jpg"],[UIImage imageNamed:@"ロライマ山.jpeg"]] mutableCopy];
    NSLog(@"SouthAmerica_NameとImageのデータを配列に格納");
    
    //４つ目のセクション:ヨーロッパ のセル名
    Eourope4_NameData = [@[@"アルプス",@"ナバイオビーチ", @"ドブロブニク"]mutableCopy];
    Eourope4_subNameData = [@[@"スイス",@"ギリシャ", @"クロアチア"]mutableCopy];
    Eourope4_ImageData = [@[[UIImage imageNamed:@"アルプス.jpeg"],[UIImage imageNamed:@"ナバイオビーチ.png"],[UIImage imageNamed:@"ドブロブニク.png"]] mutableCopy];
    NSLog(@"Eourope_NameとImageのデータを配列に格納");
    
    //５つ目のセクション:アフリカ のセル名
    Africa5_NameData = [@[@"サハラ砂漠",@"バオバブ並木"]mutableCopy];
    Africa5_subNameData = [@[@"モロッコ",@"マダガスカル"]mutableCopy];
    Africa5_ImageData = [@[[UIImage imageNamed:@"サハラ砂漠.jpeg"],[UIImage imageNamed:@"マダガスカル.jpg"]] mutableCopy];
    NSLog(@"Africa_NameとImageのデータを配列に格納");
    
    //６つ目のセクション:オセアニア のセル名
    Oceania6_NameData = [@[@"エアーズロック",@"グレートオーシャンロード"]mutableCopy];
    Oceania6_subNameData = [@[@"オーストラリア",@"オーストラリア"]mutableCopy];
    Oceania6_ImageData = [@[[UIImage imageNamed:@"エアーズロック.jpg"],[UIImage imageNamed:@"グレートオーシャンロード.jpg"]] mutableCopy];
    NSLog(@"Oceania_NameとImageのデータを配列に格納");
    
    //７つ目のセクション:その他広域 のセル名
    AroundTheWorld7_NameData = [@[@"世界一周",@"アジア"]mutableCopy];
    AroundTheWorld7_subNameData = [@[@" ",@" "]mutableCopy];
    AroundTheWorld7_ImageData = [@[[UIImage imageNamed:@"地球.jpg"],[UIImage imageNamed:@"アジア.jpg"]] mutableCopy];
    NSLog(@"AroundTheWorld_NameとImageのデータを配列に格納");
    
    
    
    //各データ配列の配列を作成
    NameData = @[Asia1_NameData, NorthAmerica2_NameData, SouthAmerica3_NameData, Eourope4_NameData, Africa5_NameData, Oceania6_NameData, AroundTheWorld7_NameData];
    subNameData = @[Asia1_subNameData, NorthAmerica2_subNameData, SouthAmerica3_subNameData, Eourope4_subNameData, Africa5_subNameData, Oceania6_subNameData, AroundTheWorld7_subNameData];
    NSLog(@"NameData");
    ImageData = @[Asia1_ImageData, NorthAmerica2_ImageData, SouthAmerica3_ImageData, Eourope4_ImageData, Africa5_ImageData,Oceania6_ImageData, AroundTheWorld7_ImageData];
    NSLog(@"ImageData");
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
