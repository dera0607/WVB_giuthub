//
//  FirstViewController.m
//  140302TravelAndBook
//
//  Created by NexSeed on 2014/03/02.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import "DetailViewController.h"

#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]//色のための定義

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // //ナビゲーションバーの色とか変更用？
    //ナビゲーションバーのボタンに使用されるテキストの色を変更
    self.navigationController.navigationBar.tintColor = RGBA(230, 217, 181, 1.0);
    //  ナビゲーションバーのタイトルの色を変更する
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: RGBA(230, 217, 181, 1.0)};
    self.navigationController.navigationBar.barTintColor = RGBA(69, 44, 10, 1.0);
    
    UIBarButtonItem *backBarButtonItem= [[UIBarButtonItem alloc] initWithTitle:@"戻る"
                                                                         style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationItem setBackBarButtonItem:backBarButtonItem];
    
        self.tabBarController.tabBar.hidden = NO;
    
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    

    
    self.TableView.dataSource=self;
    self.TableView.delegate=self;
    

	
    
}

#pragma mark number of section-cell
//テーブルビューのセクションの数を指定
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];

    NSLog(@"セクション数=%d",appDelegate.AreaName.count );
    return appDelegate.AreaName.count;
}

//セルの数を指定
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSLog(@"セル数=%d", [appDelegate.NameData[section] count]);
    return  [appDelegate.NameData[section] count];
    
}

//セクションのタイトルをつける
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSLog(@"AreaNameの%d番目タイトル=%@", section, appDelegate.AreaName[section]);
    return appDelegate.AreaName[section];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier=@"CellID";
    
    //TableViewが標準で持っているcellを作成する
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //セルが作成されていなければ、初期化したセルを作成
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    
    // セルにテキストとイメージを設定
    NSLog(@"%d番目のセクションの%d番目のセルに文字とイメージを入れる", indexPath.section,indexPath.row);
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    cell.textLabel.text = [appDelegate.NameData[indexPath.section] objectAtIndex:indexPath.row];
    cell.textLabel.adjustsFontSizeToFitWidth = YES;//フォントサイズ調整
    cell.detailTextLabel.text = [appDelegate.subNameData[indexPath.section] objectAtIndex:indexPath.row];
    cell.imageView.image = [appDelegate.ImageData[indexPath.section] objectAtIndex:indexPath.row];
    
    cell.textLabel.textColor = RGBA(69, 44, 10, 1.0);
    tableView.separatorColor = RGBA(255, 255, 255, 0.0);
    cell.accessoryType = UITableViewCellAccessoryNone;
    
    NSLog(@"テキストと画像はいりました");
    
    return cell;
}

//TableViewのセルの色を交互に変更
- (void)tableView:(UITableView *)tableView
  willDisplayCell:(UITableViewCell *)cell
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //    cell.backgroundColor = [UIColor clearColor];
    tableView.backgroundColor = [UIColor clearColor];
    
    // For even
    if (indexPath.row % 2 == 0) {
        cell.backgroundColor = RGBA(230, 217, 181, 1.0);//Beige
    }
    // For odd
    else {
        cell.backgroundColor = RGBA(245, 240, 207, 1.0);//Wheat
    }
}

//TableViewの高さを変更
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}

//TableViewの色、フォント等変更

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    UIView *View_SectionTitle = [[UIView alloc] init];
    //    [View_SectionTitle setBackgroundColor:RGBA(0, 0, 0, 1.0)];
    View_SectionTitle.backgroundColor = RGBA(69, 44, 10, 1.0);
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 0.0f, 320.0f, 22.0f)];
    lbl.backgroundColor = RGBA(69, 44, 10, 1.0);
    lbl.textColor = RGBA(230, 217, 181, 1.0);
    lbl.text =appDelegate.AreaName[section];
    //    [NSString stringWithFormat:AreaName[section]];
    [View_SectionTitle addSubview:lbl];
    return View_SectionTitle;
}

//TableViewの画面遷移 セルが選択されたときのイベント取得（遷移）
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DetailViewController *DetailView = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewID"];
    //DetailViewControllerクラス（StoryBoardの右で設定）のSecondVewControllerを作成し、IDがsecondVewController（StoryBoardの右で設定）と一致するものと結びつける。セグウェイで繋がっていないので、DetailViewControllerのID一致必要。
    
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.Pass_NameData = [appDelegate.NameData[indexPath.section] objectAtIndex:indexPath.row];
    appDelegate.Pass_NameImage = [appDelegate.ImageData[indexPath.section] objectAtIndex:indexPath.row];
    appDelegate.Pass_Area = appDelegate.AreaName[indexPath.section];
    
    NSLog(@"indexPath.section = %d",indexPath.section);
    NSLog(@"indexPath.row = %d",indexPath.row);
    
    //DetailViewControllerの本のデータ取得用
    appDelegate.SelectedSection = indexPath.section;
    appDelegate.SelectedRow = indexPath.row;
    
    
    
    NSLog(@"appDelegete.SelectedSection = %d",appDelegate.SelectedSection);
    NSLog(@"appDelegete.SelectedRow = %d",appDelegate.SelectedRow);
    
    //tabBarを隠す
    self.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:DetailView animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];//選択解除
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
