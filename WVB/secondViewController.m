//
//  secondViewController.m
//  WVB
//
//  Created by NexSeed on 13/11/29.
//  Copyright (c) 2013年 NexSeed. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController
@synthesize myStrName;
@synthesize myStrImage;

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
    self.sLabel.text = myStrName;
    self.sImageView.image = myStrImage;

    
    //*１つ目の本*//
    //本1の名前
    NSLog(@"BookData1に文字を入れます");
    BookData1  = [@[@"ウユニ塩湖弾丸ツアー"]mutableCopy];
    NSLog(@"BookData1.count = %d", [BookData1 count]);
    self.book1Name.text = [BookData1 objectAtIndex:0];
    
    //本2の画像
    BookImage1  = [@[[UIImage imageNamed:@"ウユニ塩湖弾丸ツアー.jpg"]]mutableCopy];
    NSLog(@"BookImage1.count = %d", [BookImage1 count]);
    self.book1Image.image = [BookImage1 objectAtIndex:0];
    
    
    //２つ目の本
    BookData2  = [@[@"ボリビアを知るための68章"]mutableCopy];
    NSLog(@"BookData2.count = %d", [BookData2 count]);
    self.book2Name.text = [BookData2 objectAtIndex:0];
    
    BookImage2  = [@[[UIImage imageNamed:@"ガンジス.jpg"]]mutableCopy];
    NSLog(@"BookImage2.count = %d", [BookImage2 count]);
    self.book2Image.image = [BookImage2 objectAtIndex:0];
        

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
    myView2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:myView2];
    myView2.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.0f];
    /* シングルタップ */
    UITapGestureRecognizer *tapGesture2 =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(myView2_Tapped:)];
    // ビューにジェスチャーを追加
    [myView2 addGestureRecognizer:tapGesture2];
    
}


/**
 * ビューがタップされたとき
 */
- (void)myView1_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"本1がタップされました．");
    NSString *urlString = @"http://www.amazon.co.jp/%E3%82%A6%E3%83%A6%E3%83%8B%E5%A1%A9%E6%B9%96-%E5%BC%BE%E4%B8%B8%E3%83%84%E3%82%A2%E3%83%BC-%E9%8E%8C%E7%94%B0-%E6%99%83-ebook/dp/B00EQ56PF4";
    NSURL *url = [NSURL URLWithString:urlString];
    [[UIApplication sharedApplication] openURL:url];

}
/**
 * ビューがタップされたとき
 */
- (void)myView2_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"本2がタップされました．");
    NSString *urlString = @"http://www.google.co.jp";
    NSURL *url = [NSURL URLWithString:urlString];
    [[UIApplication sharedApplication] openURL:url];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
