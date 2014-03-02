//
//  FirstViewController.m
//  TravelAndBook
//
//  Created by NexSeed on 2014/02/10.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import "DetailViewController.h"


#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]//色のための定義


@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.TableView.dataSource=self;
    self.TableView.delegate=self;
    
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

}


#pragma mark number of section-cell
//テーブルビューのセクションの数を指定
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    NSLog(@"セクション数=%d",AreaName.count );
    return AreaName.count;
}

//セルの数を指定
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"セル数=%d", [NameData[section] count]);
    return  [NameData[section] count];
    
}

//セクションのタイトルをつける
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSLog(@"AreaNameの%d番目タイトル=%@", section, AreaName[section]);
    return AreaName[section];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier=@"Cell";
    
    //TableViewが標準で持っているcellを作成する
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //セルが作成されていなければ、初期化したセルを作成
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    
    // セルにテキストとイメージを設定
    NSLog(@"%d番目のセクションの%d番目のセルに文字とイメージを入れる", indexPath.section,indexPath.row);
    
    cell.textLabel.text = [NameData[indexPath.section] objectAtIndex:indexPath.row];
    cell.textLabel.adjustsFontSizeToFitWidth = YES;//フォントサイズ調整
    cell.detailTextLabel.text = [subNameData[indexPath.section] objectAtIndex:indexPath.row];
    cell.imageView.image = [ImageData[indexPath.section] objectAtIndex:indexPath.row];
    
    cell.textLabel.textColor = RGBA(69, 44, 10, 1.0);
    tableView.separatorColor = RGBA(255, 255, 255, 0.0);
    cell.accessoryType = UITableViewCellAccessoryNone;
    
    NSLog(@"テキストと画像はいりました");
    
    return cell;
}



//TableViewの画面遷移
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

        DetailViewController *DetailView = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewID"];
    //secondViewControllerクラス（StoryBoardの右で設定）のSecondVewControllerを作成し、IDがsecondVewController（StoryBoardの右で設定）と一致するものと結びつける。セグウェイで繋がっていないので、secondViewControllerのID一致必要。
    
    
    AppDelegate *appDelegete = [[UIApplication sharedApplication] delegate];
    
    
    NSLog(@"indexPath.section = %d",indexPath.section);
    NSLog(@"indexPath.row = %d",indexPath.row);
    
    //secondViewControllerの本のデータ取得用
    appDelegete.SelectedSection = indexPath.section;
    appDelegete.SelectedRow = indexPath.row;
    
    
    
    NSLog(@"appDelegete.SelectedSection = %d",appDelegete.SelectedSection);
    NSLog(@"appDelegete.SelectedRow = %d",appDelegete.SelectedRow);
    
    
    [self.navigationController pushViewController:DetailView animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];//選択解除
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
