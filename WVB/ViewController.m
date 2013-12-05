//
//  ViewController.m
//  WVB
//
//  Created by NexSeed on 13/11/28.
//  Copyright (c) 2013年 NexSeed. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h" //これ必要？

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.TV.dataSource=self;
    self.TV.delegate=self;
    NSLog(@"デリゲートとデータソース終了");
    

    
    
    NameData = [@[@"ボリビア/ウユニ", @"アルゼンチン/フィッツロイ", @"アルゼンチン/ペリトモレノ",@"中国/チベット", @"インド/ガンジス"]mutableCopy];
    
    ImageData = [@[[UIImage imageNamed:@"ウユニ.jpg"],[UIImage imageNamed:@"フィッツロイ.jpg"],[UIImage imageNamed:@"ペリトモレノ.jpg"],[UIImage imageNamed:@"チベット.jpg"],[UIImage imageNamed:@"ガンジス.jpg"]] mutableCopy];
    
    
    self.Map.image = [UIImage imageNamed:@"WorldMap.gif"];
    
//    self.TV.title = @"世界のおすすめスポット";
    self.TV.frame = CGRectMake(0, 160, 320, 480);
    
	// Do any additional setup after loading the view, typically from a nib.
}

//セクションの数を指定
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

//セルの数を指定
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
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
    
    // セルにテキストとイメージを設定
    cell.textLabel.text = [NameData objectAtIndex:indexPath.row];
    cell.imageView.image = [ImageData objectAtIndex:indexPath.row];
    NSLog(@"テキストと画像はいりました");
    
    return cell;//これ、セルの表示に必要！
}


////cell置かないver. セルが選択されたときのイベント取得（遷移）
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//
//    secondViewController *SecondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
//    //secondViewControllerクラス（StoryBoardの右で設定）のSecondVewControllerを作成し、IDがsecondVewController（StoryBoardの右で設定）と一致するものと結びつける。セグウェイで繋がっていないので、secondViewControllerのID一致必要。
//
//    
//    [self.navigationController pushViewController:SecondViewController animated:YES];
//
//}




//cell置くver. セルが選択されたときのイベント取得（遷移）※StoryBoard上でセグウェイ繋いだらここなくても遷移はする。データが移行しないだけ。
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"MoveToSecond"]){
//        NSIndexPath *indexPath = [self.TV indexPathForSelectedRow];
// セグウェイで繋がっているので、secondViewControllerのID一致をしなくてよい。
        NSLog(@"遷移します");
        secondViewController *SecondViewController = [segue destinationViewController];
        SecondViewController.myStrName = NameData[self.TV.indexPathForSelectedRow.row];
        SecondViewController.myStrImage = ImageData[self.TV.indexPathForSelectedRow.row];
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
