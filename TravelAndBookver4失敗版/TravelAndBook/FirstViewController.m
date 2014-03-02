//
//  FirstViewController.m
//  TravelAndBook
//
//  Created by NexSeed on 2014/02/09.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import "DetailViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    
}


#pragma mark number of section-cell
//テーブルビューのセクションの数を指定
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

//セルの数を指定
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
    
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier=@"Cell";
   
    //TableViewが標準で持っているcellを作成する
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //セルが作成されていなければ、初期化したセルを作成
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text=[NSString stringWithFormat:@"行=%d", indexPath.row];
    return cell;
}



//TableViewの画面遷移
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DetailViewController *DetailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"detailViewController"];
    //secondViewControllerクラス（StoryBoardの右で設定）のSecondVewControllerを作成し、IDがsecondVewController（StoryBoardの右で設定）と一致するものと結びつける。セグウェイで繋がっていないので、secondViewControllerのID一致必要。
    
    
    AppDelegate *appDelegete = [[UIApplication sharedApplication] delegate];
   
    
    NSLog(@"indexPath.section = %d",indexPath.section);
    NSLog(@"indexPath.row = %d",indexPath.row);
    
    //secondViewControllerの本のデータ取得用
    appDelegete.SelectedSection = indexPath.section;
    appDelegete.SelectedRow = indexPath.row;
    
    
    
    NSLog(@"appDelegete.SelectedSection = %d",appDelegete.SelectedSection);
    NSLog(@"appDelegete.SelectedRow = %d",appDelegete.SelectedRow);
    
    
    [self.navigationController pushViewController:DetailViewController animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];//選択解除

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
